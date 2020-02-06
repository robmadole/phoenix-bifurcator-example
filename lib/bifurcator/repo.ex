defmodule Bifurcator.Repo do
  use Ecto.Repo,
    otp_app: :bifurcator,
    adapter: Ecto.Adapters.Postgres
end
