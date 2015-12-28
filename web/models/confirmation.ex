defmodule GuestListConfirm.Confirmation do
  use GuestListConfirm.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "confirmations" do
    field :is_coming, :boolean, default: false
    field :has_guest, :boolean, default: false
    field :food_restrictions, :string
    field :other, :string

    timestamps
  end

  @required_fields ~w(is_coming)
  @optional_fields ~w()

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