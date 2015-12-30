defmodule Mix.Tasks.GuestListConfirm.SendRsvps do
  use Mix.Task

  alias GuestListConfirm.Repo
  alias GuestListConfirm.Confirmation

  import Ecto.Query, only: [from: 2]

  @shortdoc "Sends out RSVP requests by email"
  def run(_args) do
    Repo.start_link
    Mix.shell.info "Sending RSVP emails to recipients"
    Enum.map rsvps, fn c ->
      case GuestListConfirm.Mailer.send_rsvp(c) do
        {:ok, _} -> mark_rsvp_sent(c)
        {:error, status, reason} -> raise reason
      end
    end
  end

  defp rsvps do
    query = from c in Confirmation,
            where: c.sent_rsvp == false,
            select: c
    Repo.all(query)
  end

  defp mark_rsvp_sent(confirmation) do
    # TODO
  end

end
