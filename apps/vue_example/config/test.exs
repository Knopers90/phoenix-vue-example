use Mix.Config

# Configure your database
config :vue_example, VueExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "vue_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
