# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vue_example_web,
  namespace: VueExample.Web,
  ecto_repos: [VueExample.Repo]

# Configures the endpoint
config :vue_example_web, VueExample.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dZJ1vaBMf/aO8VDyr0aTo4wnS26OqpZntR4WsD6qIWprMBP1X3+G9B7zXRm2+Rdt",
  render_errors: [view: VueExample.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VueExample.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :vue_example_web, :generators,
  context_app: :vue_example

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
