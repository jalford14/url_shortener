use Mix.Config

# Configure your database
config :url_shortener, UrlShortener.Repo,
  username: "postgres",
  password: "postgres",
  database: "url_shortener_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :url_shortener, UrlShortenerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
