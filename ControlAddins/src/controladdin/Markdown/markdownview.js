
var iframe = window.frameElement;
iframe.style.paddingBottom = "42px";

function Init() {
    var control = document.getElementById("controlAddIn");
    control.innerHTML = "";

    const div = document.createElement('div');
    div.id = 'markdown-view';
    control.appendChild(div);

    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnAfterInit",[]);
    console.log("A markdown control has been initialized.");
}

function Load(data) {
    const markdownView = document.getElementById('markdown-view');
    const htmlValue = marked.parse(data);
    markdownView.innerHTML = DOMPurify.sanitize(htmlValue,
        {USE_PROFILES: {html: true}});
}
