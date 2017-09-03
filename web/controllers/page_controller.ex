defmodule AzureDeploymentTest.PageController do
  use AzureDeploymentTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def file(conn, _params) do
    file =
      Application.app_dir(:azure_deployment_test, "priv")
      |> Path.join("/static/images/certfile")
      |> File.read!("web/static/assets/images/certfile")
    conn
    |> send_resp(200, file)
    # render conn, "index.html"
    # render conn, test: test
  end
end
