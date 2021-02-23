# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rocket_pay,
  ecto_repos: [RocketPay.Repo]

# Configures the endpoint
config :rocket_pay, RocketPayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "17TyUdAQyUDwf7VqN9qre1VJjidTXHwCXYdmAUhLSYklwUhMmAYQEQrS4MlnWHhw",
  render_errors: [view: RocketPayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RocketPay.PubSub,
  live_view: [signing_salt: "wr7k5I5m"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
