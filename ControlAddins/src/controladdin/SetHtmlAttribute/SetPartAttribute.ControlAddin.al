controladdin "SetPartAttribute"
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

    Scripts = './SetHtmlAttribute.js';
    StartupScript = './startup.js';

    event OnReady();

    procedure SetAttributeValue(fieldControlName: Text; parentOffset: Integer; AttributeName: Text; AttributeValue: Text); //Set empty value to remove attribute

}