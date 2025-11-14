controladdin "DropArea"
{
    // Rendered as a 1×1 invisible part on the page
    RequestedHeight = 1;
    MinimumHeight = 1;
    MaximumHeight = 1;
    RequestedWidth = 1;
    MinimumWidth = 1;
    MaximumWidth = 1;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    Scripts = './DropArea.js';
    StartupScript = './startup.js';
    StyleSheets = './DropArea.css';

    event OnReady();

    event OnFileDrop(JsonText: Text);

    procedure InitializeFileDropHandler(fieldControlName: Text);

}