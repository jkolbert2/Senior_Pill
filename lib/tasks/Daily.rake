namespace :email_sending do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task daily: :environment do
    puts "Hello!"
     Reminder.find do |drug|
         puts drug.Drug
        if drug.frequency == "daily"
             puts "found one!"
             drug.ReminderMailer.reminder_email(@reminder).deliver
        else 
         puts "nope!"
        end
     end
  end
end

