defmodule UrlShortener.Repo.Migrations.AddLinksTable do
  use Ecto.Migration

  def up do
    execute "create extension if not exists \"pgcrypto\";"

    create table(:links, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")
      add :namespace, :text
      add :original_url, :text
      add :target, :text

      timestamps()
    end
  end

  def down do
    drop table(:links)
  end
end
