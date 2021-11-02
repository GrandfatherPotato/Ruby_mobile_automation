Feature: Shopping cart test case

  @ShoppingCart @Add @Items
  Scenario Outline: Add an item from different categories to shopping cart
   Given Login a user
   When User opens main screen
   And User opens <Category> category
   And User opens category item
   And User picks a size
   And Add item to cart
   Then Verify item added to cart
   Examples:
    | Category |
    | Hoodies  |
    | Vests    |






