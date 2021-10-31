class WishlistScreen

  def initialize
    #Add wishlist item functions
    @open_main_menu = Elements.new(:id, 'action_to_dashboard')
    @open_item_category = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, 'T-shirts')]")
    @wishlist_button = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_wish_list']")
    #Wishlist menu functions
    @wishlist_menu = Elements.new(:id, 'action_to_wish_list')
    @wishlist_item = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/wish_list_product_item_title']")
    @items_wishlist_icon = Elements.new(:id, 'product_header_item_wish_list')
    @wishlist_back_button = Elements.new(:id, 'product_header_item_back_touch')
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

  def open_wishlist_item
    @wishlist_item.click
  end

  def remove_from_wishlist
    @items_wishlist_icon.click
  end

  def return_to_wishlist
    @wishlist_back_button.click
  end

  #@todo Replace with previous code
  def delete_all_remaining_items
    wishlist_item_array = @wishlist_item
    wishlist_item_array.each do |i|
      $driver.swipe(start_x: 960, start_y: 450, end_x: 150, end_y: 450, duration: 50_000)
      Elements.new(:id, 'wish_list_product_item_remove').click
    end
  end

end
