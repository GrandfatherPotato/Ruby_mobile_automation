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

And(/^User presses Login$/) do
  @screens.auth_screen.press_login
end

And(/^User enters (.*) into the email field$/) do |email|
  @screens.auth_screen.enter_email(email)
end

And(/^User enters (.*) into the password field$/) do |password|
  @screens.auth_screen.enter_password(password)
end

And(/^User consents to TOS$/) do
  @screens.auth_screen.login_tos_consent
end

And(/^User skips gender choice$/) do
  @screens.auth_screen.skip_gender_choice
end

And(/^My profile page contains (.*)$/) do |email|
  @screens.profile_screen.verify_account_details(email)
end
