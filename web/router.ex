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
    get "/.well-known/acme-challenge/Pg2uKspKLyTq4LDi8WiXwlnRjYkMSc0fGW5-oRG_r54", PageController, :file
  end

  # Other scopes may use custom stacks.
  # scope "/api", AzureDeploymentTest do
  #   pipe_through :api
  # end
end
