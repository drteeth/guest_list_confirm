defmodule GuestListConfirm.ConfirmationTest do
  use GuestListConfirm.ModelCase

  alias GuestListConfirm.Confirmation

  @valid_attrs %{food_restrictions: "some content", has_guest: true, is_coming: true, other: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Confirmation.changeset(%Confirmation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Confirmation.changeset(%Confirmation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
