var socket = new Phoenix.Socket("/ws");

socket.join("topic", "play", {}, function(channel) {
	console.log("connected");
});