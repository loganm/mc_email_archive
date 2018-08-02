defmodule McEmailArchive.Archive do
  alias McEmailArchive.Repo
  alias McEmailArchive.Archive.Email

  def get_email_by_guid(guid) do
    Repo.get_by(Email, guid: guid)
  end

  def create_email(attrs \\ %{}) do
    %Email{}
    |> Email.changeset(attrs)
    |> Repo.insert()
  end
end
