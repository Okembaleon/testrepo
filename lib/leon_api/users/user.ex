defmodule LeonApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @optional_fields [:id, :biography, :full_name, :gender, :inserted_at, :updated_at]
  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :biography, :string
    field :full_name, :string
    field :gender, :string
    belongs_to :account, LeonApi.Accounts.Account

    timestamps()
  end

  defp all_fields do
    __MODULE__.__schema__(:fields)
  end

  @doc false

  #defining a changeset function for an Ecto schema module
  def changeset(user, attrs) do
    user
    |> cast(attrs, all_fields())
    |> validate_required(all_fields() -- @optional_fields)
  end
end
