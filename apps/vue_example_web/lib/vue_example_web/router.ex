defmodule VueExample.Web.Router do
  use VueExample.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", VueExample.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", VueExample.Web.Api do
    pipe_through(:api)

    resources "/tasks", TaskController, only: [:index]
  end

  # Other scopes may use custom stacks.
  # scope "/api", VueExample.Web do
  #   pipe_through :api
  # end
end
