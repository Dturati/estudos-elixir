import Config

config :friends, ecto_repos: [Friends.Repo]

config :friends, Friends.Repo,
  database: "friends_repo",
  username: "admin",
  password: "123",
  hostname: "localhost"
