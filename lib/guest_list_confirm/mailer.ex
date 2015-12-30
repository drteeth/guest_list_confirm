defmodule GuestListConfirm.Mailer do
  use Mailgun.Client,
      domain: Application.get_env(:hello_phoenix, :mailgun_domain),
      key: Application.get_env(:hello_phoenix, :mailgun_key)
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

end
