defmodule Instagram.Account.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :avatar, :string
    field :username, :string

    has_many :photos, Instagram.Post.Photo

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, [:username, :avatar])
    |> validate_required([:username, :avatar])
    |> unique_constraint(:username)
  end
end
