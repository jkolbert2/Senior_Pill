namespace :email_sending do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task once_daily: :environment do
    Reminder.find do |drug|
        puts drug.Drug
        if drug.frequency == "Daily"
             puts "found one!"
             ReminderMailer.reminder_email(drug).deliver
        else 
            puts "nope!"
        end
     end
  end
  task twice_daily: :enviornment do
      Reminder.find do |drug|
        puts drug.Drug
        if drug.frequency == "Twice Daily"
            puts "found one!"
            ReminderMailer.reminder_email(drug).deliver
        else
            puts "nope!"
        end
     end
end
  task once_weekly: :enviornment do
      Reminder.find do |drug|
        puts drug.Drug
        if drug.frequency == "Once Weekly"
            puts "found one!"
            ReminderMailer.reminder_email(drug).deliver
        else
            puts "nope!"
        end
     end
end
end
