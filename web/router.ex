defmodule McEmailArchive.Router do
  use McEmailArchive.Web, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", McEmailArchive do
    pipe_through(:browser)

    get("/:guid", EmailController, :show)
    get("/", HomeController, :index)
  end

  scope "/api", McEmailArchive do
    pipe_through(:api)

    post("/emails", EmailController, :create)
  end
end
