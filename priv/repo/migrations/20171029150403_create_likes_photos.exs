defmodule Instagram.Repo.Migrations.CreateLikesPhotos do
  use Ecto.Migration

  def change do
    create table(:likes_photos) do
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :photo_id, references(:photos, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:likes_photos, [:user_id])
    create index(:likes_photos, [:photo_id])
  end
end
