defmodule Instagram.Repo.Migrations.CreatePhotoTagTaggings do
  use Ecto.Migration

  def change do
    create table(:photos_taggings, primary_key: false) do
      add :photo_id, references(:photos), null: false
      add :tag_id, references(:tags), null: false
    end
  end
end
