# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todolist,
  ecto_repos: [Todolist.Repo]

# Configures the endpoint
config :todolist, TodolistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6NtN/3nXiI2KrfREXcPXmcgk4r0/GimqHoO6zD6tCfB3p7ZhbrY5+mJVZxWFXtHR",
  render_errors: [view: TodolistWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Todolist.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "/theUVu7CVwa46OXkXlVR7aGUFeCOfUz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Render leex files com live view Engine
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
