# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :olio,
  ecto_repos: [Olio.Repo]

# Configures the endpoint
config :olio, OlioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ykdt3NUPtCWoLCangMMwsIsa/gj0ijEF+70TXJxGp4I2u2AtzEVpz0HXj5dlXaLt",
  render_errors: [view: OlioWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Olio.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Slim compilers
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

config :phoenix_slime, :use_slim_extension, true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
