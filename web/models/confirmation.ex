defmodule GuestListConfirm.Confirmation do
  use GuestListConfirm.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "confirmations" do
    field :email, :string, null: false
    field :is_coming, :boolean, null: false, default: false
    field :has_guest, :boolean, null: false, default: false
    field :rsvped_at, Ecto.DateTime
    field :food_restrictions, :string
    field :other, :string

    timestamps
  end

  @required_fields ~w(is_coming has_guest)
  @optional_fields ~w(food_restrictions other)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
