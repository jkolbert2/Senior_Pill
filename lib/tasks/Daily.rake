namespace :email_sending do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task daily: :environment do
    puts "hello!"
     Reminder.find_each do |drug|
       if drug.frequency == "daily"
         drug.send_reminder
       end
     end
  end
end

