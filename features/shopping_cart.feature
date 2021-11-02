Feature: Shopping cart test case

  @ShoppingCart @Add @Items
  Scenario: Add an item from different categories to shopping cart
   Given Login a user
   When User opens main screen
   And User opens Vests category
   And User opens category item
   And User picks a size
   And Add item to cart
   And Verify item added to cart
   Then Verify total price is accurate
