controladdin "SetFieldFocus"
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

    Scripts = './SetFieldFocus.js';
    StartupScript = './startup.js';

    event OnReady();

    procedure SetFocusOnFieldName(fieldControlName: Text);
    procedure PutValueToFieldName(fieldControlName: Text; Value: Text);
    procedure AddValueHandlersToFieldName(fieldControlName: Text);

    // supposedly works better on mobile - to be tested
    procedure SetFocusOnFieldCaption(FieldCaption: Text);

}