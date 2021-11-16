# frozen_string_literal: true
class WishlistScreen

  def initialize
    #Add wishlist item functions
    @open_main_menu = Elements.new(:id, 'action_to_dashboard')
    @wishlist_button = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_wish_list']")
    @product_item_name = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_title']")
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
    @open_item_category = Elements.new(:xpath, :"//android.widget.TextView[contains(@text, \"#{item}\")]").click
  end

  # Not the best way to do it, but works for now
  # Could add a search trough whole page and add elements later
  # Just scroll the page after every 2 added elements and add them to the list
  def add_items_to_wishlist
    amount_of_items_to_add = 4
    wishlist_button_arr = @wishlist_button.get_multiple_elements
    temp_array = @product_item_name.get_multiple_elements
    @wishlist_item_names = []
    #Inverted index to preserve added order
    inverted_index = amount_of_items_to_add - 1
    i = 0
    while i < amount_of_items_to_add
      @wishlist_item_names[inverted_index] = temp_array[i].text
      wishlist_button_arr[i].click
      i += 1
      inverted_index -= 1
    end
  end

  def open_wishlist
    @wishlist_menu.click
  end

  def wishlisted_item_names
    # code here
  end

  def verify_wishlist_items

    # Loop to verify items against each other
    n = @wishlist_item_names.count
    temp_arr = @wishlist_item.get_multiple_elements
    i = 0
    while i < n
      wishlisted_item_name = temp_arr[i].text
      expected = @wishlist_item_names[i].upcase
      actual = wishlisted_item_name
      raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
      i += 1
    end
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

  def delete_all_remaining_items
    wishlist_item_array = @wishlist_item.get_multiple_elements
    i = wishlist_item_array.count
    num = 0
    while num < i
      $driver.wait_true(@element_to_delete = Elements.new(:id, 'wish_list_product_item_remove'))
      @element_to_delete = Elements.new(:id, 'wish_list_product_item_remove')
      element_to_delete_startX = @element_to_delete.get_element.size.width
      element_to_delete_endX = (@element_to_delete.get_element.size.width * 0.5).normalize
      element_to_delete_midY = (@element_to_delete.get_element.size.height * 0.5).normalize
      $driver.swipe(start_x: element_to_delete_startX, start_y: element_to_delete_midY, end_x: element_to_delete_endX, end_y: element_to_delete_midY, duration: 2000)
      Elements.new(:id, 'wish_list_product_item_remove').click
      @wishlist_menu.click
      num += 1
    end
  end

end
