namespace :Daily do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task daily_task: :environment do |_, args|
     @reminders.each do |drug|
       if drug.frequency == "daily"
         puts "hello"
         drug.send_reminder
     end
  end
end
