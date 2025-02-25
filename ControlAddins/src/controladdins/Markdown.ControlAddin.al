controladdin "Markdown"
{
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 'src/scripts/marked.min.js', 'src/scripts/purify.js', 'src/scripts/markdown.js';
    StartupScript = 'src/scripts/startup.js';
    StyleSheets = 'src/scripts/markdown.css';

    event ControlReady();
    event SaveRequested(data: Text);
    event OnChange(data: Text);
    event OnFocusOut(data: Text);
    event OnAfterInit();

    procedure Init(jsonLabels: JsonObject);
    procedure Load(data: Text);
    procedure RequestSave();
}