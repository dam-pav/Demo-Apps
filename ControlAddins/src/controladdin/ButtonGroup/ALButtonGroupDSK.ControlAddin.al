controladdin "ALButtonGroup_DSK"
{
    RequestedHeight = 40;
    MinimumHeight = 32;
    MinimumWidth = 84;
    VerticalStretch = false;
    HorizontalStretch = true;
    VerticalShrink = true;
    HorizontalShrink = true;

    Scripts =
        '../Button/BaseControl.js',
        '../Button/Button.js',
        './ButtonGroup.js';
    StyleSheets =
        '../Button/BaseControl.css',
        '../Button/Button.css',
        './ButtonGroup.css';
    StartupScript =
        './startup.js';

    //#region Base Events

    event OnLoad();

    event OnError(message: Text);

    //#endregion

    event OnClick(id: Text);

    procedure AddButton(caption: Text; title: Text; id: Text; "type": Text);

    procedure RemoveButton(id: Text);
}