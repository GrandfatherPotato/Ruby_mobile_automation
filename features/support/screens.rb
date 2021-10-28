class Screens
  def auth_screen
    @auth_screen ||= AuthorizationScreen.new
  end

  def profile_screen
    @profile_screen ||= ProfileScreen.new
  end

end
