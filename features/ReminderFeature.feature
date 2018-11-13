Feature: User can manually add new reminder
  
Scenario: Add new reminder
  Given I am on the Create New Reminder page
  When I select "March" in "Date"
  And I select "2" in "Date"
  And I select "2018" in "Date"
  And I fill in "Name" with "Caroline Hixon"
  And I fill in "Drug" with "Advil"
  And I fill in "Amount" with "2"
  And I fill in "Purpose" with "Headache"
  And I fill in "Email" with "chixon@tulane.edu"
  And I press "Submit"
  Then I should see "Caroline Hixon"