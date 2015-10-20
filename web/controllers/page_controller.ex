defmodule Sb2Phoenix.PageController do
  use Sb2Phoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
