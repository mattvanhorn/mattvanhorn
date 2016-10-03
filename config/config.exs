# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mattvanhorn,
  ecto_repos: [Mattvanhorn.Repo]

# Configures the endpoint
config :mattvanhorn, Mattvanhorn.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gvWQzwiosBZQHD/2nXU7Bam4N8ZLyKhbtBBTs9IcCt8cGilo/JlW1EntDE5FB53Z",
  render_errors: [view: Mattvanhorn.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mattvanhorn.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
