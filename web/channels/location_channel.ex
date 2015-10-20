defmodule Sb2Phoenix.LocationChannel do
  use Phoenix.Channel

  def join("locations", _message, socket) do
    {:ok, socket}
  end
end
