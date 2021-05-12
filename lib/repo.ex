defmodule PocEctoMigrationsLib.Repo do
  use Ecto.Repo,
    otp_app: :poc_ecto_migrations_lib,
    adapter: Ecto.Adapters.CockroachDB
end
