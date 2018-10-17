class ReminderMailer < ApplicationMailer
    default from: 'donotreply@pillproject.com'
    def reminder_email
        @reminder = params[:id]
        @name = @reminder.Name 
        mail(to: @reminder.Email, subject: 'REMINDER')
        
    end
    
end
