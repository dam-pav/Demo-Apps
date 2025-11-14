controladdin "Markdown"
{
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = './marked.min.js', './purify.js', './markdownedit.js';
    StartupScript = './startup.js';
    StyleSheets = './markdownedit.css';

    event ControlReady();
    event SaveRequested(data: Text);
    event OnChange(data: Text);
    event OnFocusOut(data: Text);
    event OnAfterInit();

    procedure Init(jsonLabels: JsonObject);
    procedure Load(data: Text);
    procedure RequestSave();
}