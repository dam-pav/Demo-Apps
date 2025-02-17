controladdin "Notepad"
{
    VerticalStretch = true;
    HorizontalStretch = true;
    Scripts = 'src/scripts/notepad.js';
    StartupScript = 'src/scripts/startup.js';
    StyleSheets = 'src/scripts/notepad.css';

    event ControlReady();
    event SaveRequested(data: Text);
    event OnChange(data: Text);
    event OnFocusOut(data: Text);
    event OnAfterInit();

    procedure Init(jsonLabels: JsonObject);
    procedure Load(data: Text);
    procedure SetEditable(editable: Boolean);
    procedure RequestSave();
}
