defmodule GuestListConfirm.Repo.Migrations.CreateConfirmation do
  use Ecto.Migration

  def change do
    create table(:confirmations, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :email, :string, null: false
      add :is_coming, :boolean, null: false, default: false
      add :has_guest, :boolean, null: false, default: false
      add :rsvped_at, :datetime
      add :food_restrictions, :text
      add :other, :text

      timestamps
    end

  end
end
