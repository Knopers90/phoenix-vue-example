use Mix.Config

config :vue_example, ecto_repos: [VueExample.Repo]

import_config "#{Mix.env}.exs"
