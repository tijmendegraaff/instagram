defmodule Instagram.Reaction.LikePhoto do
  use Ecto.Schema
  import Ecto.Changeset


  schema "likes_photos" do
    field :user_id, :id
    field :photo_id, :id

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = like_photo, attrs) do
    like_photo
    |> cast(attrs, [:user_id, :photo_id])
    |> validate_required([:user_id, :photo_id])
  end
end