defmodule VueExample.Web.Api.TaskController do
  use VueExample.Web, :controller
  alias VueExample.Web.Api.TaskView

  def index(conn, _params) do
    tasks = [
      %{
        name: "task 1",
        done: false
      },
      %{
        name: "task 2",
        done: false
      },
      %{
        name: "task 3",
        done: false
      },
      %{
        name: "task 4",
        done: false
      },
      %{
        name: "task 5",
        done: false
      }
    ]
    
    conn
    |> render TaskView, "index.json", %{tasks: tasks}
  end
end