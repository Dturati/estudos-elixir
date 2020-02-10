defmodule Friends.Movie do
    import  Friends.Repo
    import Ecto.Query
    alias Movie.{Movie, Character, Repo, Actor}

    def saveMovie do
        movie = %Movie{title: "Filme 1", tagline: "teste filme 1"}
        movie = Friends.Repo.insert!(movie)
        saveCharacter(movie)
        saveDistri(movie)
        saveActor(movie)
    end

    def saveCharacter(movie) do
        character = Ecto.build_assoc(movie, :characters, %{name: "Wade Wattrs"})
        Friends.Repo.insert!(character)
    end

    def saveDistri(movie) do
        distributor = Ecto.build_assoc(movie, :distributors, %{name: "Netflix"})
        Friends.Repo.insert!(distributor)
    end

    def saveActor(movie) do 
        actor = %Actor{name: "Tyler Shereidan"}
        movie = Friends.Repo.preload(movie, [:distributors, :characters, :actors])
        movie_changeset = Ecto.Changeset.change(movie)
        movie_actors_changeset =  Ecto.Changeset.put_assoc(movie_changeset,:actors, [actor])
        Friends.Repo.update!(movie_actors_changeset)
    end

    def getMovie(id) do
        Friends.Repo.get(Movie, id)
    end

    def getByAtributte(name) do
        Friends.Repo.get_by(Movie, title: "Filme 1")
    end

    def getByQuery do
        query = from(m in Movie, select: m)
        Friends.Repo.all(query)
    end

end