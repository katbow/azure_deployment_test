# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :azure_deployment_test,
  ecto_repos: [AzureDeploymentTest.Repo]

# Configures the endpoint
config :azure_deployment_test, AzureDeploymentTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zYuMr3a5JB8bzHvdP4Eg6uEtRMk0MZoKOn3LetR7iCKhfVfp+spoQN/0np8N3RTf",
  render_errors: [view: AzureDeploymentTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AzureDeploymentTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
