function Init(jsonLabels) {
    var div = document.getElementById("controlAddIn");
    div.innerHTML = "";

    const textarea = document.createElement('textarea');
    textarea.id = 'notepad';
    div.appendChild(textarea);

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

    const searchInput = document.createElement('input');
    searchInput.id = 'searchInput';
    searchInput.placeholder = jsonLabels.lblSearchFor;
    div.appendChild(searchInput);

    const replaceInput = document.createElement('input');
    replaceInput.id = 'replaceInput';
    replaceInput.placeholder = jsonLabels.lblReplaceWith;
    div.appendChild(replaceInput);

    const caseCheckbox = document.createElement('input');
    caseCheckbox.type = 'checkbox';
    caseCheckbox.id = 'caseCheckbox';
    div.appendChild(caseCheckbox);

    const caseLabel = document.createElement('label');
    caseLabel.htmlFor = 'caseCheckbox';
    caseLabel.innerText = jsonLabels.lblIgnoreCase;
    div.appendChild(caseLabel);

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
    div.appendChild(searchButton);

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
    div.appendChild(replaceButton);

    textarea.addEventListener('change', function() {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ContentChanged",[textarea.value]);
    });

    textarea.addEventListener('focusout', function() {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ContentChanged",[textarea.value]);
    });

    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnAfterInit",[]);
}

function Load(data) {
    const textarea = document.getElementById('notepad');
    if (textarea) {
        textarea.focus();
        document.execCommand('selectAll', false, null);
        document.execCommand('insertText', false, data);
    }
}

function RequestSave() {
    const textarea = document.getElementById('notepad');
    if (textarea) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("SaveRequested",[textarea.value]);
    }
}