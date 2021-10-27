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