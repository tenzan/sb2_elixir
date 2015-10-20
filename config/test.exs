use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sb2_phoenix, Sb2Phoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :sb2_phoenix, Sb2Phoenix.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "sb2_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
