function InitializeFileDropHandler(fieldControlName) {
    const selector = `div[controlname^='${fieldControlName}']`;
    const div = window.parent.document.querySelector(selector);

    if (!div) {
        console.error(`Element with controlname ${fieldControlName} not found`);
        return;
    }

    // Prevent default drag behaviors
    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
        div.addEventListener(eventName, preventDefaults, false);
        window.parent.document.body.addEventListener(eventName, preventDefaults, false);
    });

    // Highlight drop area when item is dragged over it
    ['dragenter', 'dragover'].forEach(eventName => {
        div.addEventListener(eventName, highlight, false);
    });

    ['dragleave', 'drop'].forEach(eventName => {
        div.addEventListener(eventName, unhighlight, false);
    });

    // Handle dropped files
    div.addEventListener('drop', handleDrop, false);

    function preventDefaults(e) {
        e.preventDefault();
        e.stopPropagation();
    }

    function highlight(e) {
        //div.classList.add('file-drop-highlight'); //TODO: the css approach fails to apply the style for some reason
        div.style.border = '2px dashed #0078D4'; // Example highlight style
        div.style.backgroundColor = 'rgba(0, 120, 212, 0.1)'; // Light background color
        div.style.borderRadius = '4px'; // Rounded corners
        div.style.boxShadow = '0 0 8px rgba(0, 120, 212, 0.3)'; // Subtle shadow effect
        div.style.transition = 'all 0.2s ease-in-out';
        div.style.position = 'relative';
        div.style.minHeight = '60px';
        div.style.opacity = '0.9';
    }

    function unhighlight(e) {
        //div.classList.remove('file-drop-highlight');
        div.style.border = '';
        div.style.backgroundColor = '';
        div.style.borderRadius = '';
        div.style.boxShadow = '';
        div.style.transition = '';
        div.style.position = '';
        div.style.minHeight = '';
        div.style.opacity = '';
    }

    function handleDrop(e) {
        const dt = e.dataTransfer;
        const files = dt.files;

        if (files.length > 0) {
            const fileArray = Array.from(files);
            const fileList = [];
            let filesProcessed = 0;
            
            // Process each file and read its contents
            fileArray.forEach((file, index) => {
                const reader = new FileReader();
                
                reader.onload = function(event) {
                    const fileData = {
                        name: file.name,
                        size: file.size,
                        type: file.type,
                        lastModified: file.lastModified,
                        content: event.target.result.split(',')[1], // Remove data:...;base64, prefix
                        encoding: 'base64'
                    };
                    
                    fileList.push(fileData);
                    filesProcessed++;
                    
                    console.log(`File ${file.name} processed`);
                    
                    // When all files are processed, invoke the OnFileDrop event once
                    if (filesProcessed === fileArray.length) {
                        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnFileDrop", [JSON.stringify(fileList)]);
                        console.log(`All ${fileList.length} files sent to AL for import`);
                    }
                };
                
                reader.onerror = function(error) {
                    console.error(`Error reading file ${file.name}:`, error);
                    filesProcessed++;
                    
                    // Continue processing even if some files fail
                    if (filesProcessed === fileArray.length && fileList.length > 0) {
                        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnFileDrop", [JSON.stringify(fileList)]);
                        console.log(`${fileList.length} files successfully sent to AL for import (${fileArray.length - fileList.length} failed)`);
                    }
                };
                
                // Read file as base64 data URL
                reader.readAsDataURL(file);
            });
        }

        console.log(`${files.length} file(s) dropped on element with controlname ${fieldControlName}`);
    }

    console.log(`File drop handler initialized for element with controlname ${fieldControlName}`);
}


