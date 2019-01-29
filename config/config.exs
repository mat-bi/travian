# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :travian,
  ecto_repos: [Travian.Repo]

# Configures the endpoint
config :travian, TravianWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KlxBd2g8ivWtmCsxpIEDCywMsNRVWtNsYRZ6un1m94oMhWDHQ/FWkNsnMd8LYuSy",
  render_errors: [view: TravianWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Travian.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
