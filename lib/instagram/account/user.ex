defmodule Instagram.Account.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :avatar, :string
    field :username, :string

    has_many :photos, Instagram.Post.Photo

    many_to_many :likes, Instagram.Reaction.LikePhoto, join_through: "likes_photos"

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
