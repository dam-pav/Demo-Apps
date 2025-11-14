controladdin "Markdown View"
{
    VerticalStretch = true;
    MinimumHeight = 600;
    HorizontalStretch = true;
    VerticalShrink = true;
    Scripts = './marked.min.js', './purify.js', './markdownview.js';
    StartupScript = './startup.js';
    StyleSheets = './markdownview.css';

    event ControlReady();
    event OnAfterInit();

    procedure Init();
    procedure Load(data: Text);
}