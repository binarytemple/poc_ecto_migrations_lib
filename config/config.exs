import Config

config :poc_ecto_migrations_lib, ecto_repos: [PocEctoMigrationsLib.Repo]

config :poc_ecto_migrations_lib, PocEctoMigrationsLib.Repo,
  database: "net_dev",
  pool_size: 20,
  timeout: 200,
  username: "root",
  password: "",
  hostname: "localhost",
  port: 26257

config :logger, level: :info
