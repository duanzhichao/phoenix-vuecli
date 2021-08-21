# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixVuecli,
  ecto_repos: [PhoenixVuecli.Repo]

# Configures the endpoint
config :phoenixVuecli, PhoenixVuecliWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3lFk2odwZyfzCX1NkwIATLaa89PjGhbbUxkZlcrSKBi+lqoYSY2YmP+nA3xlAzDZ",
  render_errors: [view: PhoenixVuecliWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixVuecli.PubSub,
  live_view: [signing_salt: "Jszld3+F"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
