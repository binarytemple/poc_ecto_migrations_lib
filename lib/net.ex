defmodule PocEctoMigrationsLib.Net do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "net" do
    field(:digest, :string)
    field(:timestamp, :integer)
    field(:subnets, :integer)
  end
end
