defmodule Movie.Distributor do
    use Ecto.Schema
    
    schema "distributors" do
        field :name, :string
        belongs_to :movie, Movie.Movie
    end
end