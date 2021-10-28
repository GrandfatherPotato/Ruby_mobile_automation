Feature: Authorization test case
  @Sign-up
  Scenario:Register a random user
    When User goes to starting page
    And User presses Sign up
    And User enters random data
    And User checks TOS
    And User creates an account
    And User confirms registration
    Then User sees home page

  @Login
  Scenario Outline:Login a random user
    When User goes to starting page
    And User presses Login
    And User enters <email> into the email field
    And User enters <password> into the password field
    And User consents to TOS
    And User skips gender choice
    Then User sees home page
    And My profile page contains <email>
    Examples:
      | email                   | password          |
      | redextreme71@gmail.com  | CatCactus5#       |
      | valtsdrozdovs@gmail.com | Something#Fancy13 |