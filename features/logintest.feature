Feature: User can successfuly log in

Scenario: Log in
    Given: I am on pill_project login page
    When I fill in "email" with "jfailla1@tulane.edu"
    And I fill in "password" with "123456"
    And I press "Log In"
    Then I should be on the Users Page
    