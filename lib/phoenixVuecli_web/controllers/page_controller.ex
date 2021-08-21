defmodule PhoenixVuecliWeb.PageController do
  use PhoenixVuecliWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
