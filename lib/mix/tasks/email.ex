defmodule Mix.Tasks.GuestListConfirm.SendRsvps do
  use Mix.Task

  @shortdoc "Sends out RSVP requests by email"
  def run(_args) do
    Mix.shell.info "Sending RSVP emails to recipients"
    GuestListConfirm.Mailer.sample("drteeth@gmail.com")
  end

end
