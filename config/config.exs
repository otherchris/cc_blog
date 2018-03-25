# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cc_blog,
  ecto_repos: [CcBlog.Repo]

# Configures the endpoint
config :cc_blog, CcBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nTlzsyHZ5CSVFhqFhb8tsosPOE5dR/VJu2SDJFHi2+DLY/ObEg3B8YPa1Jpq0Gii",
  render_errors: [view: CcBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CcBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
