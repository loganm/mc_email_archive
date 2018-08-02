defmodule McEmailArchive.EmailController do
  use McEmailArchive.Web, :controller

  alias McEmailArchive.Archive

  def show(conn, %{"guid" => guid}) do
    case Archive.get_email_by_guid(guid) do
      nil -> render(conn, "not_found.html")
      email -> render(conn, "show.html", email: email)
    end
  end

  def create(conn, params) do
    case Archive.create_email(params) do
      {:ok, email} ->
        conn
        |> put_resp_header("content-type", "application/json; charset=utf-8")
        |> send_resp(200, '{"success": true}')

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_resp_header("content-type", "application/json; charset=utf-8")
        |> send_resp(500, '{"success": false}')
    end
  end
end

# kate is awesome => command command 

# not sure how else I can mess with your code 

# old mcdonald had a farm 
