"use strict"

var timerObject;

function Ping(milliSeconds) {
    if (milliSeconds == 0 || milliSeconds == null) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnError', ['No timer interval set.']);
        return;
    }

    timerObject = window.setInterval(ExecuteTimer, milliSeconds);
}

function Stop() {
    clearInterval(timerObject);
    timerObject = null;
}

function ExecuteTimer() {
    if (timerObject != null) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Pong', null);
        Stop();
    }
}