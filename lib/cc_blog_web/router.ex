defmodule CcBlogWeb.Router do
  use CcBlogWeb, :router

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

  scope "/", CcBlogWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/politics", PageController, :politics
    get "/strip_test", PageController, :strip_test
  end

  # Other scopes may use custom stacks.
  # scope "/api", CcBlogWeb do
  #   pipe_through :api
  # end
end
