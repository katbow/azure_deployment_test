defmodule AzureDeploymentTest.Router do
  use AzureDeploymentTest.Web, :router

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

  scope "/", AzureDeploymentTest do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/.well-known/acme-challenge/F7mVdvnEuajgfVIFRzVcuK5-vyURg3GKi6rQZ_opp8k", PageController, :file
  end

  # Other scopes may use custom stacks.
  # scope "/api", AzureDeploymentTest do
  #   pipe_through :api
  # end
end
