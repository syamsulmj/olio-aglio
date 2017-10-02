defmodule OlioWeb.PageController do
  use OlioWeb, :controller

  def index(conn, _params) do

    conn
    |> render("index.html")
  end
end
