controladdin "PingPong"
{
    Scripts = './PingPong.js';
    StartupScript = './startup.js';

    HorizontalShrink = true;
    HorizontalStretch = true;
    MinimumHeight = 1;
    MinimumWidth = 1;
    RequestedHeight = 1;
    RequestedWidth = 1;
    VerticalShrink = true;
    VerticalStretch = true;

    procedure Ping(milliSeconds: Integer);
    procedure Stop();

    event Pong();
    event OnReady();
    event OnError(ErrorMessage: Text);
}