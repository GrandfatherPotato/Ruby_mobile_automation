class AuthorizationScreen
  def initialize
    # Signup related code
    @skip_notifications_window = Elements.new(:id, 'notification_close')
    @press_signup = Elements.new(:id, 'onboard_sign_up')
    @signup_email_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'E-mail address')]")
    @signup_password_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'Password')]")
    @check_tos = Elements.new(:id, 'registration_regulations_check')
    @create_account = Elements.new(:id, 'registration_sign_up')
    @confirm_registration = Elements.new(:xpath, :"//android.widget.Button[contains(@text, 'CONTINUE')]")
    @check_nav_bar = Elements.new(:id, 'main_nav_menu')
    # Login related code
    @press_login = Elements.new(:id, 'onboard_login')
    @login_email_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'E-mail address')]")
    @login_password_field = Elements.new(:xpath, :"//android.widget.EditText[contains(@text, 'Password')]")
    @login_continue_next = Elements.new(:id, 'login_sign_in')
    @login_check_tos = Elements.new(:id, 'agreement_personal_switch')
    @login_continue_tos = Elements.new(:xpath, :"//android.widget.Button[contains(@text, 'NEXT')]")
    @login_skip_gender = Elements.new(:id, 'gender_skip')
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

  def press_login
    @press_login.click
  end

  def enter_email(email)
    @login_email_field.type(email)
  end

  def enter_password(password)
    @login_password_field.type(password)
    @login_continue_next.click
  end

  def login_tos_consent
    @login_check_tos.click
    @login_continue_tos.click
  end

  def skip_gender_choice
    @login_skip_gender.click
  end
end
