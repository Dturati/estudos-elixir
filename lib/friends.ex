defmodule Friends do
  import Friends.Repo
  @moduledoc """
  Documentation for Friends.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Friends.hello()
      :world

  """
  def hello do
    :world
  end

  def set(name, age) do
    %Friends.Person{}
    |> Friends.Person.changeset(%{"name" => name, "age" => age})
    |> Friends.Repo.insert()
  end
end
