defmodule BifurcatorWeb.PathSelectorController do
  use BifurcatorWeb, :controller

  def index(conn, _params) do
    {module, function} = Application.get_env(:bifurcator, __MODULE__)[:delegate]

    Kernel.apply(module, :call, [conn, function])
  end
end
