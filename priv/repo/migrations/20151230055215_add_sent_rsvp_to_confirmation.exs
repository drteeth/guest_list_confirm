defmodule GuestListConfirm.Repo.Migrations.AddSentRsvpToConfirmation do
  use Ecto.Migration

  def change do
    alter table(:confirmations) do
      add :sent_rsvp, :boolean, null: false, default: false
    end
  end

end
