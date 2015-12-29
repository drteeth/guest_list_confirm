defmodule GuestListConfirm.ConfirmationController do
  use GuestListConfirm.Web, :controller

  alias GuestListConfirm.Repo
  alias GuestListConfirm.Confirmation

  def index(conn, _params) do
    render conn, "index.html"
  end

  def edit(conn, %{"id" => id}) do
    confirmation = Repo.get!(Confirmation, id)
    changeset = Confirmation.changeset(confirmation)
    render conn, "edit.html", confirmation: confirmation, changeset: changeset
  end

  def update(conn, %{"id" => id, "confirmation" => params}) do
    confirmation = Repo.get!(Confirmation, id)
    changeset = Confirmation.changeset(confirmation, params)

    case Repo.update(changeset) do
      {:ok, confirmation} ->
        conn
        |> put_flash(:info, "Your RSVP has been sent.")
        |> redirect(to: confirmation_path(conn, :edit, confirmation.id))
      {:error, changeset} ->
        render conn, "edit.html", confirmation: confirmation, changeset: changeset
    end
  end

end
