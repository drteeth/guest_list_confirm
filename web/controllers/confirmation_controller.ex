defmodule GuestListConfirm.ConfirmationController do
  use GuestListConfirm.Web, :controller
  alias GuestListConfirm.Repo
  alias GuestListConfirm.Confirmation

  def index(conn, _params) do
    render conn, "index.html"
  end

  def edit(conn, %{"id" => id}) do
    confirmation = Repo.get!(Confirmation, id)
    conn
    |> assign(:confirmation, confirmation)
    |> render "edit.html"
  end

  def update(conn, params) do
  end

end
