defmodule Hello.MyChannel do
  use Phoenix.Channel
  require Logger

  def join("topic:play", _message, socket) do
  	Logger.warn "someone joined ..."
  	IO.puts "someone joined the channel..."
    {:ok, socket}
  end
  
  # After joining, you must handle-in. Replying directly to socket.
  def handle_in("topic:play", _msg, socket) do
    reply socket, "topic:play", "Hi"
    {:ok, socket}
  end
end