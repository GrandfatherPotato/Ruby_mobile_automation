class WishlistScreen

  def initialize
    @open_main_menu = Elements.new(:id, 'action_to_dashboard')
    @open_item_category = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, 'T-shirts')]")
    @wishlist_button = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_wish_list']")
    @wishlist_menu = Elements.new(:id, 'action_to_wish_list')
  end

  def open_main_menu
    @open_main_menu.click
  end

  def open_item_category(item)
    @open_item_category.click
  end

  # Not the best way to do it, but works for now
  # Could add a search trough whole page and add elements later
  # Just scroll the page after every 2 added elements and add them to the list
  def add_items_to_wishlist
    wishlist_button_arr = @wishlist_button.get_multiple_elements
    i = 0
    while i < 4
      wishlist_button_arr[i].click
      i += 1
    end
  end

  def open_wishlist
    @wishlist_menu.click
  end
end
