class MessageMailer < ApplicationMailer

  def contact_me(message)
    @greeting = "Hi"

    mail to: "to@example.org"
  end

end
