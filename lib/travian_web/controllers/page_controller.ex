defmodule TravianWeb.PageController do
  use TravianWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
