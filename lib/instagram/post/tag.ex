defmodule Instagram.Post.Tag do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tags" do
    field :name, :string, null: false

    many_to_many :photos, Instagram.Post.Photo, join_through: "photos_taggings"

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = tag, attrs) do
    tag
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
