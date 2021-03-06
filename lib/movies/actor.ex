defmodule Movie.Actor do
    use Ecto.Schema

    schema "actors" do
        field :name, :string
        many_to_many :movies, Movie.Movie, join_through: "movies_actors"
    end
end