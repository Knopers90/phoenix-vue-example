defmodule VueExample.Web.Api.TaskController do
  use VueExample.Web, :controller
  alias VueExample.Web.Api.TaskView

  def index(conn, _params) do
    tasks = (1..5) |> Enum.to_list # Fetch tasks function
    
    conn
    |> render TaskView, "index.json", %{tasks: tasks}
  end
end