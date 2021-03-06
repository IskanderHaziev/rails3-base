@webmock
Feature: Sign up with Twitter account
  In order to log into the system
  As a user
  I want to register a new account with the system with my Twitter account

  Scenario: User signs up with Twitter account
    Given the Twitter OAuth request is successful
    When I go to the sign up page
    And I follow "Twitter"
    Then I should be on the sign up page
    When I fill in "Email" with "user@exampld.com"
    And press "Sign up"
    Then I should be signed in
    And I should be on the home page

