defmodule Instagram.Post.Photo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "photos" do
    field :image_url, :string, null: false

    many_to_many :tags, Instagram.Post.Tag, join_through: "photos_taggings"

    belongs_to :user, Instagram.Account.User

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = photo, attrs) do
    photo
    |> cast(attrs, [:image_url, :user_id])
    |> validate_required([:image_url, :user_id])
  end
end
