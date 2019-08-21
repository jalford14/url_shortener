defmodule UrlShortenerWeb.PageController do
  use UrlShortenerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
