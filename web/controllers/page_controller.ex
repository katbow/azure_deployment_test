defmodule AzureDeploymentTest.PageController do
  use AzureDeploymentTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def file(conn, _params) do
    render conn, "file.html"
  end
end
