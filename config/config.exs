# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bifurcator,
  ecto_repos: [Bifurcator.Repo]

# Configures the endpoint
config :bifurcator, BifurcatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dL0VwQijbnTLhVwkWq6yAfMsZHU7DtX+ejkMs3FQh5DrxOWjJSTx3myOgicl5YWj",
  render_errors: [view: BifurcatorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bifurcator.PubSub, adapter: Phoenix.PubSub.PG2]

config :bifurcator, BifurcatorWeb.PathSelectorController,
  delegate: {BifurcatorWeb.PathOneController, :index}
  # delegate: {BifurcatorWeb.PathTwoController, :index}

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
