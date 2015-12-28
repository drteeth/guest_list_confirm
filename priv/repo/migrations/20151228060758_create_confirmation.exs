defmodule GuestListConfirm.Repo.Migrations.CreateConfirmation do
  use Ecto.Migration

  def change do
    create table(:confirmations, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :is_coming, :boolean
      add :has_guest, :boolean, default: false
      add :food_restrictions, :text
      add :other, :text

      timestamps
    end

  end
end
