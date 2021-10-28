class ProfileScreen

  def initialize
    # View profile information code
    @open_my_account_page = Elements.new(:id, 'action_to_account')
    @open_profile_page = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, 'Profile')]")
    @email_container = Elements.new(:id, 'profile_toolbar_title')
  end

  def verify_account_details(email)
    @open_my_account_page.click
    @open_profile_page.click
    expected = email
    actual = @email_container.get_text
    raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
  end

end
