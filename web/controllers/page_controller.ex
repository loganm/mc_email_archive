defmodule McEmailArchive.PageController do
  use McEmailArchive.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
