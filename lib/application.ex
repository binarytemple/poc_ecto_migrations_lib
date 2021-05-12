defmodule PocEctoMigrationsLib.Application do

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PocEctoMigrationsLib.Repo
    ]

    opts = [strategy: :one_for_one, name: PocEctoMigrationsLib.Supervisor]
    Supervisor.start_link(children, opts)
  end


end

