defmodule Instagram.Repo.Migrations.CreatePhotos do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :image_url, :string, null: false

      timestamps()
    end

  end
end