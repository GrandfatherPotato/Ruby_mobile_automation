#Log user into account
Given(/^Login a user$/) do
  steps %{
  And User goes to starting page
  And User presses Login
  And User enters valtsdrozdovs@gmail.com into the email field
  And User enters Something#Fancy13 into the password field
  And User consents to TOS
  And User skips gender choice
  Then User sees home page
  }
end

#Add items to wishlist externally
When(/^User opens main screen$/) do
  @screens.wishlist_screen.open_main_menu
end

And(/^User opens (.*?) category$/) do |item|
  @screens.wishlist_screen.open_item_category(item)
end

And(/^Add items to wishlist$/) do
  @screens.wishlist_screen.add_items_to_wishlist
end


#Wishlist tab functions
Then(/^Open wishlist$/) do
  @screens.wishlist_screen.open_wishlist
end

And(/^Open wishlist item$/) do
  @screens.wishlist_screen.open_wishlist_item
end

And(/^Remove open item from wishlist$/) do
  @screens.wishlist_screen.remove_from_wishlist
end

And(/^Return to wishlist$/) do
  @screens.wishlist_screen.return_to_wishlist
end

Then(/^Delete all remaining elements with swipe method$/) do
  @screens.wishlist_screen.delete_all_remaining_items
end
