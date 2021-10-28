class WishlistScreen

  def initialize
    @open_main_menu = Elements.new(:id, 'action_to_dashboard')
    @open_item_category = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, 'T-shirts')]")
    @wishlist_button = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_wish_list']")
  end

  def open_main_menu
    @open_main_menu.click
  end

  def open_item_category(item)
    @open_item_category.click
  end

  def add_items_to_wishlist
    wishlist_button_arr = @wishlist_button.get_multiple_elements
    i = 2
    while i < 5 do
      wishlist_button_arr[i].click
      i += 1
    end
  end

end
