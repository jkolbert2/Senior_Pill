class MessageMailer < ApplicationMailer


  def contact_me(message)
    @body = message.body

    mail to: "caroline@example.org", from: message.email
  end
end
