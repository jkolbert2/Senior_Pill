Given(/^I am on the Create New Reminder page$/) do
  visit('/users/32/reminders/new')
end

When(/^I fill in the New Reminder form$/) do
  fill_in('Date', :with => '02/24/2019')
  fill_in('Drug', :with => 'Advil')
  fill_in("Doctor's email", :with => 'shrek@tulane.edu')
  fill_in('Amount', :with => '2')
  fill_in('Purpose', :with => 'Headache')
  fill_in('Email', :with => 'chixon@tu.edu')
  
  select daily from frequency
  check active
  
  find('Submit').click
end


Then(/^I should see the reminder was successfully created$/) do
  page.has_content?("Reminder Successfully Created")
end 