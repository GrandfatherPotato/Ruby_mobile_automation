And(/^User opens category item$/) do
  @screens.shopping_screen.open_category_item
end

And(/^User picks a size$/) do
  @screens.shopping_screen.choose_size
end

And(/^Add item to cart$/) do
  @screens.shopping_screen.add_item_to_cart
end

Then(/^Verify item added to cart$/) do
  @screens.shopping_screen.verify_added_items
end

Then(/^Verify total price is accurate$/) do
  @screens.shopping_screen.verify_added_item_price
end
