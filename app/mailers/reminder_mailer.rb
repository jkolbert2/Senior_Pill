class ReminderMailer < ApplicationMailer
    
    def reminder_email(reminder)
        @reminder = reminder
        mail(to: @reminder.Email, subject: 'REMINDER')
        
    end
    
end
