class WishlistScreen

  def initialize
    @open_main_menu = Elements.new(:id, 'action_to_dashboard')
    @open_item_category = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, 'T-shirts')]")
  end

  def open_main_menu
    @open_main_menu.click
  end

  def open_item_category(item)
    @open_item_category.click
  end
end
