controladdin "Notepad"
{
    VerticalStretch = true;
    HorizontalStretch = true;
    Scripts = './notepad.js';
    StartupScript = './startup.js';
    StyleSheets = './notepad.css';

    event OnReady();
    event OnSaveRequested(data: Text);
    event OnChange(data: Text);
    event OnFocusOut(data: Text);
    event OnAfterInit();

    procedure Init(jsonLabels: JsonObject);
    procedure SetContent(data: Text);
    procedure SetEditable(editable: Boolean);
    procedure RequestSave();
}