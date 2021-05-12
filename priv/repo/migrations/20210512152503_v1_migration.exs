defmodule PocEctoMigrationsLib.Repo.Migrations.V1Migration do
  use Ecto.Migration

  def up do
    PocEctoMigrationsLib.Repo.Migrations.V1.CreateNet.up()
  end

  def down do
    PocEctoMigrationsLib.Repo.Migrations.V1.CreateNet.down()
  end




end
