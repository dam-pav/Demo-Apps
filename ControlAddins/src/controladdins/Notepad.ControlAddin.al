controladdin "Notepad"
{
    VerticalStretch = true;
    HorizontalStretch = true;
    Scripts = 'src/scripts/notepad.js';
    StartupScript = 'src/scripts/startup.js';
    StyleSheets = 'src/scripts/notepad.css';

    event ControlReady();
    event SaveRequested(data: Text);
    event ContentChanged(data: Text);
    event OnAfterInit();

    procedure Init(jsonLabels: JsonObject);
    procedure Load(data: Text);
    procedure RequestSave();
}