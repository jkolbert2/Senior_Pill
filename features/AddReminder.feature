Feature: User can manually add new reminder
  
Scenario: Add new reminder (happy)
  Given I am on the Create New Reminder page
  When I fill in the New Reminder form
  Then I should see the reminder was successfully created
  
