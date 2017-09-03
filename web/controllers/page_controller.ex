defmodule AzureDeploymentTest.PageController do
  use AzureDeploymentTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def file(conn, _params) do
    file = File.read!("web/static/assets/images/certfile")
    conn
    # render conn, "index.html"
    # render conn, test: test
    |> send_resp(200, file)
  end
end
