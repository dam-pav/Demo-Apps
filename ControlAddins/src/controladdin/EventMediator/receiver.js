function RegisterChannel(ChannelName) {
  const bc = new BroadcastChannel(ChannelName);
  bc.addEventListener("message", (event) => {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnReceive', [bc.name,event.data]);
  });
  console.log("A BroadcastChannel listener has been registered for the channel " + bc.name + ".");
}
