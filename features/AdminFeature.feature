Feature: User can sign up as Admin/Caregiver/Doctor
  
Scenario: Create Admin account (happy)
  Given I am on the home page
  When I follow "Log in"
  Then I should see "User Sign In!"
  When I follow "Sign up now!"
  Then I should see "User Sign Up!"
  When I fill in "Name" with "Caroline Hixon"
  And I fill in "Email" with "chixon@tu.edu"
  And I fill in "Password" with "123456"
  And I fill in "Confirmation" with "123456"
  And I select "Caregiver" from "Select user type"
  And I press "Create my account"
  Then I should see "Welcome to Pill Project. You are now an Admin"
  
Scenario: Create Admin account (sad)
  Given I am on the home page
  When I follow "Log in"
  Then I should see "User Sign In!"
  When I follow "Sign up now!"
  Then I should see "User Sign Up!"
  When I fill in "Name" with "Caroline Hixon"
  And I fill in "Email" with "chixon@tu.edu"
  And I fill in "Password" with "123456"
  And I fill in "Confirmation" with "123456"
  And I select "Patient" from "Select user type"
  And I press "Create my account"
  Then I should not see "Welcome to Pill Project. You are now an Admin"
  And I should see "Welcome to Pill Project"