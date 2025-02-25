function Init(jsonLabels) {
    var controladdin = document.getElementById("controlAddIn");
    if (jsonLabels.isSearchAreaCollapsible == true) {
        controladdin.classList.add('search-collapsed');
        }
    controladdin.innerHTML = "";

    const textarea = document.createElement('textarea');
    textarea.id = 'notepad';
    controladdin.appendChild(textarea);

    textarea.addEventListener('dragover', function(event) {
        event.preventDefault();
    });

    textarea.addEventListener('drop', function(event) {
        event.preventDefault();
        const file = event.dataTransfer.files[0];
        if (file && file.type === 'text/plain') {
            const reader = new FileReader();
            reader.onload = function(e) {
                textarea.focus();
                document.execCommand('selectAll', false, null);
                document.execCommand('insertText', false, e.target.result);
            };
            reader.readAsText(file);
        }
    });

    const searcharea = document.createElement('div');
    searcharea.id = 'searcharea';
    controladdin.appendChild(searcharea);

    const searchInput = document.createElement('input');
    searchInput.id = 'searchInput';
    searchInput.placeholder = jsonLabels.lblSearchFor;
    searcharea.appendChild(searchInput);
    
    const replaceInput = document.createElement('input');
    replaceInput.id = 'replaceInput';
    replaceInput.placeholder = jsonLabels.lblReplaceWith;
    searcharea.appendChild(replaceInput);

    const caseCheckbox = document.createElement('input');
    caseCheckbox.type = 'checkbox';
    caseCheckbox.id = 'caseCheckbox';
    searcharea.appendChild(caseCheckbox);

    const caseLabel = document.createElement('label');
    caseLabel.htmlFor = 'caseCheckbox';
    caseLabel.innerText = jsonLabels.lblIgnoreCase;
    searcharea.appendChild(caseLabel);

    const searchButton = document.createElement('button');
    searchButton.innerText = jsonLabels.lblFindNext;
    searchButton.classList.add('al-button');
    searchButton.classList.add('al-button-primary');
    searchButton.onclick = function() {
        const searchValue = searchInput.value;
        const textareaValue = textarea.value;
        const startIndex = textarea.selectionEnd;
        const ignoreCase = caseCheckbox.checked;
        const searchText = ignoreCase ? textareaValue.toLowerCase() : textareaValue;
        const searchTerm = ignoreCase ? searchValue.toLowerCase() : searchValue;
        let index = searchText.indexOf(searchTerm, startIndex);
        if (index === -1 && startIndex !== 0) {
            index = searchText.indexOf(searchTerm, 0);
        }
        if (index !== -1) {
            textarea.setSelectionRange(index, index + searchValue.length);
            textarea.focus();
        }
    };
    searcharea.appendChild(searchButton);

    const replaceButton = document.createElement('button');
    replaceButton.innerText = jsonLabels.lblReplaceNext;
    replaceButton.classList.add('al-button');
    replaceButton.classList.add('al-button-primary');
    replaceButton.onclick = function() {
        const searchValue = searchInput.value;
        const replaceValue = replaceInput.value;
        const textareaValue = textarea.value;
        const startIndex = textarea.selectionEnd;
        const ignoreCase = caseCheckbox.checked;
        const searchText = ignoreCase ? textareaValue.toLowerCase() : textareaValue;
        const searchTerm = ignoreCase ? searchValue.toLowerCase() : searchValue;
        let index = searchText.indexOf(searchTerm, startIndex);
        if (index === -1 && startIndex !== 0) {
            index = searchText.indexOf(searchTerm, 0);
        }
        if (index !== -1) {
            // Select the text to be replaced
            textarea.setSelectionRange(index, index + searchValue.length);
            textarea.focus();
            // Use execCommand to add the change to the undo stack
            document.execCommand('insertText', false, replaceValue);
        }
    };
    searcharea.appendChild(replaceButton);

    textarea.addEventListener('change', function() {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnChange",[textarea.value]);
    });

    textarea.addEventListener('focusout', function() {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnFocusOut",[textarea.value]);
    });

    controladdin.addEventListener('focusin', function() {
        if (textarea.readOnly == false) {
            controladdin.classList.remove('search-collapsed');
        }
    });

    controladdin.addEventListener('focusout', function(event) {
        if (jsonLabels.isSearchAreaCollapsible == true) {
            if (!searcharea.contains(event.relatedTarget)) {
                controladdin.classList.add('search-collapsed');
            }
        }
    });
    
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnAfterInit",[]);
}

function Load(data) {
    const textarea = document.getElementById('notepad');
    if (textarea) {
        textarea.value = data;
    }
}

function SetEditable(editable) {
    const textarea = document.getElementById('notepad');
    if (textarea) {
        textarea.readOnly = !editable;
    }
}

function RequestSave() {
    const textarea = document.getElementById('notepad');
    if (textarea) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("SaveRequested",[textarea.value]);
    }
}