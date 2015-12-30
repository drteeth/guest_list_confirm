defmodule GuestListConfirm.Mailer do
  use Mailgun.Client,
      domain: Application.get_env(:guest_list_confirm, :mailgun_domain),
      key: Application.get_env(:guest_list_confirm, :mailgun_key)
      # mode: :test,
      # test_file_path: "./tmp/mailgun.json"

  alias GuestListConfirm.EmailView
  import Phoenix.View, only: [render_to_string: 3]

  def sample(email_address) do
    send_email to: email_address,
      from: "us@gregs-wedding-stuff.com.org.biz",
      subject: "Welcome!",
      text: render_to_string(EmailView, "welcome.txt", %{}),
      html: render_to_string(EmailView, "welcome.html", %{})
  end

  def send_rsvp(confirmation) do
    send_email to: confirmation.email,
      from: "greg@greg-wedding-n-nstuff.info.org.biz.tv",
      subject: "Come to our wedding?", # TODO I18n
      text: render_to_string(EmailView, "welcome.txt", %{}),
      html: render_to_string(EmailView, "welcome.html", %{})
  end

end
