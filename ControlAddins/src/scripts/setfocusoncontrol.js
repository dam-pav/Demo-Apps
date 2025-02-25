Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Ready','');

function SetFocusOnControl(fieldCaption)
{
    var anchors = window.parent.document.getElementsByTagName('a');
    for (var i=0;i<anchors.length;i++) {
        if (anchors[i].innerHTML == fieldCaption) {
            window.parent.document.querySelector(`#${anchors[i].parentNode.id} input`).focus(); 
        }
    }
}