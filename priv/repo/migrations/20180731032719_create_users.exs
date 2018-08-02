defmodule McEmailArchive.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:emails) do
      add(:guid, :string, null: false)
      add(:html, :string)

      timestamps()
    end

    create(unique_index(:emails, [:guid]))
  end
end
