Feature: User can manually add new reminder
  
Scenario: Add new reminder (happy)
  Given a logged in patient
  And I am on the Create New Reminder page
  When I fill in "Date" with "02/24/2019"
  And I fill in "Drug" with "Advil"
  And I fill in "Doctor's email" with "shrek@tulane.edu"
  And I fill in "Amount" with "2"
  And I fill in "Purpose" with "Headache"
  And I fill in "Email" with "chixon@tu.edu"
  And I select "Daily" from "Frequency"
  And I check "Active"
  And I press "Submit"
  Then I should see "Reminder Successfully Created"
  
