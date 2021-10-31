Feature: Wishlist test case

  @Wishlist @Add @Items
  Scenario: Add multiple items to wishlist
    Given Login a user
    When User opens main screen
    And User opens T-shirt category
    And Add items to wishlist
    Then Open wishlist

  @Wishlist @View @Item
  Scenario: View two items in the wishlist
    Given Login a user
    When Open wishlist
    And Open wishlist item
    And Return to wishlist

  @Wishlist @Delete @Items
  Scenario: Remove multiple items from wishlist
    Given Login a user
    When Open wishlist
    And Open wishlist item
    And Remove open item from wishlist
    And Return to wishlist
    #Safety reload, because after returning window is not auto updated
    And Open wishlist
    And Delete all remaining elements with swipe method
    Then User opens main screen