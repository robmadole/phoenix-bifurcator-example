defmodule BifurcatorWeb.PageController do
  use BifurcatorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
