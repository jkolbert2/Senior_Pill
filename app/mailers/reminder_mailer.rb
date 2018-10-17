class ReminderMailer < ApplicationMailer
    
    default from: 'donotreply@pillproject.com'
    def reminder_email(reminder)
        @reminder = reminder
        mail(to: @reminder.Email, subject: 'REMINDER')
        
    end
    
end
