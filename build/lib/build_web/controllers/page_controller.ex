defmodule BuildWeb.PageController do
  use BuildWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
