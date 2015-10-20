defmodule Sb2Phoenix.Router do
  use Sb2Phoenix.Web, :router

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

  scope "/", Sb2Phoenix do
    pipe_through :browser # Use the default browser stack

    resources “/locations", LocationController

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Sb2Phoenix do
  #   pipe_through :api
  # end
end
