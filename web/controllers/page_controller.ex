defmodule AzureDeploymentTest.PageController do
  use AzureDeploymentTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def file(conn, _params) do
    conn
    |> put_resp_content_type("application/octet-stream", "utf-8")
    |> send_file(200, "web/static/assets/images/Pg2uKspKLyTq4LDi8WiXwlnRjYkMSc0fGW5-oRG_r54")
  end
end
