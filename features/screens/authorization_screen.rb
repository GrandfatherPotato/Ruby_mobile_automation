class AuthorizationScreen

  def initialize
    @skip_notifications_window = Elements.new(:id,'notification_close')
    @press_signup = Elements.new(:id,'onboard_sign_up')
    @signup_email_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'E-mail address')]")
    @signup_password_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'Password')]")
    @check_tos = Elements.new(:id,:"registration_regulations_check")
    @create_account = Elements.new(:id,:"registration_sign_up")
    @confirm_registration = Elements.new(:xpath, :"//android.widget.Button[contains(@text, 'CONTINUE')]")
    @check_nav_bar = Elements.new(:id, :"main_nav_menu")
  end

  def skip_notifications_window
    @skip_notifications_window.click
  end

  def press_signup
    @press_signup.click
  end

  def enter_random_data
    password = 'Password123!'
    @signup_email_field.type("epicmail#{rand(1...202020)}@gmail.com")
    @signup_password_field.type(password)
  end

  def check_tos
    @check_tos.click
  end

  def create_account
    @create_account.click
  end

  def confirm_registration
    @confirm_registration.click
  end

  def check_main_menu
    @check_nav_bar.get_element
  end

end
