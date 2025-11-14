controladdin "Transmitter"
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

    Scripts = './transmitter.js';
    StartupScript = './startup.js';

    event OnReady();

    procedure Transmit(ChannelName: Text; EventData: Text);

}