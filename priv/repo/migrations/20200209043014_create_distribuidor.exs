defmodule Friends.Repo.Migrations.CreateDistribudor do
  use Ecto.Migration

  def change do
    create table(:distributors) do
      add :name, :string
      add :movie_id, references(:movies)
    end
  end
end
