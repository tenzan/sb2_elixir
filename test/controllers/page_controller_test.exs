defmodule Sb2Phoenix.PageControllerTest do
  use Sb2Phoenix.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
