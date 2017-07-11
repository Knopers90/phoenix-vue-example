defmodule VueExample.Web.PageController do
  use VueExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
