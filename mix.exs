defmodule PocEctoMigrationsLib.MixProject do
  use Mix.Project

  def project do
    [
      app: :poc_ecto_migrations_lib,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: { PocEctoMigrationsLib.Application , []}
    ]
  end


  defp deps do
    [
      {:ecto, "== 3.5.8"},
      {:ecto_cockroachdb, "~> 1.0.0"}
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate"],
      "ecto.reset": ["ecto.drop", "ecto.setup"]
    ]
  end
end
