defmodule Movie.Character do
  use Ecto.Schema

  schema "characters" do
    field :name, :string
    belongs_to :movie, Movie.Movie
  end
end