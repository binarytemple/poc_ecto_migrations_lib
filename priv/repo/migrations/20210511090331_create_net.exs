defmodule PocEctoMigrationsLib.Repo.Migrations.CreateNet do
  use Ecto.Migration

  def up do
    execute(
      """
      CREATE TABLE net(
        id UUID NOT NULL DEFAULT gen_random_uuid(),
        timestamp INT8 NOT NULL,
        digest STRING NOT NULL,
        subnets INT2 NOT NULL,
        CONSTRAINT net_pk PRIMARY KEY (id)
      );
      """
    )
  end

  def down do
    drop table("net")
  end
end
