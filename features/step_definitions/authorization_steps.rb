When(/^User goes to starting page$/) do
  @screens.auth_screen.skip_notifications_window
end

And(/^User presses Sign up$/) do
  @screens.auth_screen.press_signup
end

And(/^User enters random data$/) do
  @screens.auth_screen.enter_random_data
end

And(/^User checks TOS$/) do
  @screens.auth_screen.check_tos
end

And(/^User creates an account$/) do
  @screens.auth_screen.create_account
end

And(/^User confirms registration$/) do
  @screens.auth_screen.confirm_registration
end

Then(/^User sees home page$/) do
  @screens.auth_screen.check_main_menu
end
