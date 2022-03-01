use Mix.Config


config :phoenixVuecli, PhoenixVuecliWeb.Endpoint,
  http: [port: 4002],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    npm: [ "run", "build:dev", cd: Path.expand("../assets", __DIR__)]
  ]


# Do not print debug messages in production
config :logger, level: :info

# Finally import the config/prod.secret.exs which loads secrets
# and configuration from environment variables.
import_config "prod.secret.exs"