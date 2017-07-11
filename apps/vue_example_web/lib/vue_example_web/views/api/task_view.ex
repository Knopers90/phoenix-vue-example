defmodule VueExample.Web.Api.TaskView do
  use VueExample.Web, :view
  alias VueExample.Web.Api.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{
      tasks: render_many(tasks, TaskView, "task.json")
    }
  end

  def render("task.json", %{task: task}) do
    %{
      name: task.name,
      done: task.done
    }
  end
end