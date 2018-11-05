class MessageMailer < ApplicationMailer


  def contact_me(message)
    @body = message.body
    
      #email that messages send to
    mail to: "caroline@example.org", from: message.email
  end
end
