controladdin "SetFocusOnControl"
{
    MinimumHeight = 1;
    MaximumHeight = 1;
    MaximumWidth = 1;
    MinimumWidth = 1;
    Scripts = 'src/scripts/setfocusoncontrol.js';

    event ControlReady();

    procedure SetFocusOnControl(FieldCaption: Text);
}