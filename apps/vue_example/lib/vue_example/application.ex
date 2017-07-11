defmodule VueExample.Application do
  @moduledoc """
  The VueExample Application Service.

  The vue_example system business domain lives in this application.

  Exposes API to clients such as the `VueExample.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(VueExample.Repo, []),
    ], strategy: :one_for_one, name: VueExample.Supervisor)
  end
end
