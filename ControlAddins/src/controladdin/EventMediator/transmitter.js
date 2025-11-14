function Transmit(ChannelName, EventData) {
  const bc = new BroadcastChannel(ChannelName);
  bc.postMessage(EventData);
}

