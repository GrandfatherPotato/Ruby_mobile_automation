class Screens
  def auth_screen
    @auth_screen ||= AuthorizationScreen.new
  end

  def profile_screen
    @profile_screen ||= ProfileScreen.new
  end

  def wishlist_screen
    @wishlist_screen ||= WishlistScreen.new
  end

  def shopping_screen
    @shopping_screen ||= ShoppingScreen.new
  end
end
