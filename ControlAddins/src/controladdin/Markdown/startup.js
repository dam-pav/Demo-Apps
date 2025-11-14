// make controlAddins resizable on pages containing other groups
var iframe = window.frameElement;

iframe.parentElement.style.display = "flex";
iframe.parentElement.style.flexDirection = "column";
iframe.parentElement.style.flexGrow = "1";
iframe.parentElement.style.height = "100%";

iframe.style.removeProperty("height");
iframe.style.removeProperty("min-height");
iframe.style.removeProperty("max-height");

iframe.style.flexGrow = "1";
iframe.style.flexShrink = "1";
iframe.style.flexBasis = "auto";

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlReady",[]);
