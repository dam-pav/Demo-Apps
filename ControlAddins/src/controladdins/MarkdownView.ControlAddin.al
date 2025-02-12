controladdin "Markdown View"
{
    VerticalStretch = true;
    MinimumHeight = 600;
    HorizontalStretch = true;
    Scripts = 'src/scripts/marked.min.js', 'src/scripts/purify.js', 'src/scripts/markdownview.js';
    StartupScript = 'src/scripts/startup.js';
    StyleSheets = 'src/scripts/markdownview.css';

    event ControlReady();
    event OnAfterInit();

    procedure Init();
    procedure Load(data: Text);
}