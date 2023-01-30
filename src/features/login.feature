Feature: Login Feature
  This feature deals with the login functionality of the application

  Scenario: :Login with correct username and password

    Given I navigate to the login page
    When I enter correct username and correct password
    And I click on login button
    Then I should see user form page



