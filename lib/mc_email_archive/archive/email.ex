defmodule McEmailArchive.Archive.Email do
  use Ecto.Schema
  import Ecto.Changeset

  schema "emails" do
    field(:guid, :string)
    field(:html, :string)

    timestamps()
  end

  def changeset(email, attrs) do
    email
    |> cast(attrs, [:guid, :html])
    |> validate_required([:guid])
    |> unique_constraint(:guid)
  end
end
