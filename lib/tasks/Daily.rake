namespace :email_sending do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task daily: :environment do
    puts "Hello!"
     Reminder.find_each do |drug|
         puts "made it here!"
        if drug.frequency == "daily"
             puts "found one!"
             drug.send_reminder
        else 
         puts "nope!"
        end
     end
  end
end

