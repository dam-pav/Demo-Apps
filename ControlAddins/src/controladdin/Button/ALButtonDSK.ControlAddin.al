controladdin "ALButton_DSK"
{
    RequestedHeight = 36;
    MinimumHeight = 32;
    MinimumWidth = 84;
    VerticalStretch = false;
    HorizontalStretch = true;
    VerticalShrink = true;
    HorizontalShrink = true;

    Scripts =
        './BaseControl.js',
        './Button.js';
    StyleSheets =
        './BaseControl.css',
        './Button.css';
    StartupScript =
        './startup.js';

    //#region Base Events

    event OnLoad();

    event OnError(message: Text);

    //#endregion

    event OnClick(buttonId: Text);

    procedure SetOption("key": Text; "value": Text);
}