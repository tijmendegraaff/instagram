defmodule Instagram.Post.Photo do
  use Ecto.Schema
  import Ecto.Changeset
  alias Instagram.Post.Photo


  schema "photos" do
    field :image_url, :string

    timestamps()
  end

  @doc false
  def changeset(%Photo{} = photo, attrs) do
    photo
    |> cast(attrs, [:image_url])
    |> validate_required([:image_url])
  end
end
