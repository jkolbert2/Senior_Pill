class ReminderMailer < ApplicationMailer
    
    default from: 'from@example.com'
    def reminder_email(reminder)
        @reminder = reminder
        mail(to: @reminder.Email, subject: 'REMINDER')
        
    end
    
end
