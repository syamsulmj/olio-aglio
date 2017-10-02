defmodule OlioWeb.PageView do
  use OlioWeb, :view

  def index_meta_tags(conn) do
    path = Olio.Router.Helpers.url(conn) <> conn.request_path

    %{
      url: path,
      title: "Olio Aglio",
      description: "A web app that provide UiTM Shah Alam Campus students to publish their stuff to sell."
    }
  end
end
