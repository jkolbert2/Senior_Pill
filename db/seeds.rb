# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
reminders = [
    {:Date => '9/24/2018', :Name => 'Jackie', :Drug => 'Advil',:Purpose => 'Fever',:Amount => 2,:Email => 'reminderstest24@gmail.com'},
    {:Date => '9/24/2018', :Name => 'Jackie', :Drug => 'Claritin',:Purpose => 'Fever',:Amount => 2, :Email => 'reminderstest24@gmail.com'}
]
    
reminders.each do |drug|
    Reminder.create!(drug)
end
25.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@pillProject.org"
  User.create!(name:  name,
               email: email)
=======


25.times do  
  user = User.new
  user.name = Faker::Name
  user.email = Faker::Internet.email
  user.password = '123456'
  user.password_confirmation = '123456'
  user.save
>>>>>>> accb87cc853136a34ad8193f1d24ee1f85faa58b
end
