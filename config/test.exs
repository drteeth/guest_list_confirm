use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :guest_list_confirm, GuestListConfirm.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :guest_list_confirm, GuestListConfirm.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ben",
  # password: "postgres",
  database: "guest_list_confirm_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
