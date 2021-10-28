Feature: Wishlist test case

  @Wishlist @Add @Items
  Scenario: Add multiple items to wishlist
    Given Login a user
    When User opens main screen
    And User opens T-shirt category
    And Add items to wishlist
    Then Open wishlist