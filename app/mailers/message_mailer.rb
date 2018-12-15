class MessageMailer < ApplicationMailer


  def contact_me(message)
    @body = message.body
    
      #email that messages send to
    mail to: "jfailla1@tulane.edu", from: message.email
  end
end
