defmodule UrlShortener.LinkTest do
  use UrlShortener.DataCase
  import Ecto.Query, only: [from: 2]
  alias UrlShortener.Link

  test "create a link in the database" do
    {:ok, mylink} =
      %Link{namespace: "salesloft", original_url: "original_url", target: "target"}
      |> Repo.insert()
    
    assert ^mylink = Repo.one!(from l in Link, where: l.id == ^mylink.id)
  end
end
