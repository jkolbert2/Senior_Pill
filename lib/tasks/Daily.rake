namespace :email_sending do
  desc "Sends Emails to all reminders with Daily (i.e., once a day) pill taking"
  task daily: :environment do |_, args|
    
    puts "hello!"
    @user = User.find(params[args])
    @reminder = @user.reminders.find(params[args]);
    @reminder.each do |drug|
       if drug.frequency == "daily"
         puts "hello"
         drug.send_reminder
       end
     end
  end
end

