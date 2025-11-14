
// This function is called from AL and focuses the input element
function SetFocusOnFieldName(fieldControlName) {
    // Find any element whose controlname starts with the field number
    const selector = `[controlname^='${fieldControlName}'] input`;
    const input = window.parent.document.querySelector(selector);
    if (input) {
        input.focus();
    }
}

function PutValueToFieldName(fieldControlName,newValue) {
    // Find any element whose controlname starts with the field number
    const selector = `[controlname^='${fieldControlName}'] input`;
    const input = window.parent.document.querySelector(selector);
    if (input) {
        input.value = newValue;
        input.setAttribute('notManual', 'true');
    }
}

function AddValueHandlersToFieldName(fieldControlName) {
    // Find any element whose controlname starts with the field number
    const selector = `[controlname^='${fieldControlName}'] input`;
    const input = window.parent.document.querySelector(selector);
    if (input) {
        // Clear notManual flag on user typing
        input.addEventListener('input', () => {
            input.removeAttribute('notManual');
        });

        // Clear value on blur if not manually entered
        input.addEventListener('blur', () => {
            if (input.hasAttribute('notManual')) {
            input.value = '';
            }
        });

        // If user presses Enter, we remove the notManual flag
        input.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') {
            input.removeAttribute('notManual');
            }
        });
    }
}

// supposedly works better on mobile - to be tested
function SetFocusOnFieldCaption(fieldCaption)
{
    var anchors = window.parent.document.getElementsByTagName('a');
    for (var i=0;i<anchors.length;i++) {
        if (anchors[i].innerHTML == fieldCaption) {
            window.parent.document.querySelector(`#${anchors[i].parentNode.id} input`).focus(); 
        }
    }
}
