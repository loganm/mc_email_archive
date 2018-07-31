# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mc_email_archive,
  ecto_repos: [McEmailArchive.Repo]

# Configures the endpoint
config :mc_email_archive, McEmailArchive.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ks+/xNltqEBZcFuFzAvPTm1La4jFGI24yENc7hsoyxiUaqTsgGCpc5KRPylCE3Jf",
  render_errors: [view: McEmailArchive.ErrorView, accepts: ~w(html json)],
  pubsub: [name: McEmailArchive.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
