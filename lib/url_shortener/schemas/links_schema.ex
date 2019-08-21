defmodule UrlShortener.Link do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "links" do
    field :namespace, :string
    field :original_url, :string
    field :target, :string

    timestamps()
  end

  def changeset(link, params \\ %{}) do
    link
    |> cast(params, [:namespace, :original_url, :target])
    |> validate_required([:namespace, :original_url, :target])
  end
end
