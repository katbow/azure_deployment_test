defmodule AzureDeploymentTest.PageController do
  use AzureDeploymentTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def file(conn, _params) do
    conn
    |> put_resp_content_type("application/octet-stream", "utf-8")
    |> send_file(200, "web/static/assets/images/F7mVdvnEuajgfVIFRzVcuK5-vyURg3GKi6rQZ_opp8k")
  end
end
