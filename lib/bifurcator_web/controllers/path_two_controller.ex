defmodule BifurcatorWeb.PathTwoController do
  use BifurcatorWeb, :controller

  plug(:will_plugs_work)

  def index(conn, _params) do
    conn
    |> put_resp_header("content-type", "text/html")
    |> resp(200, "Path two")
  end

  defp will_plugs_work(conn, _opts) do
    conn
    |> put_resp_header("plugs-work", "you-betcha")
  end
end
