defmodule Movie.Movie do
  @moduledoc false
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, Movie.Character
    has_one :distributors, Movie.Distributor
    many_to_many :actors, Movie.Actor, join_through: "movies_actors"
  end
end
