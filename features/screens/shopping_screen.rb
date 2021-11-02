class ShoppingScreen

  def initialize
    @category_item = Elements.new(:xpath, :"//android.widget.ImageView[@resource-id='pl.com.fourf.ecommerce:id/product_category_small_item_image']")
    @size_dropdown = Elements.new(:id, 'product_header_item_size')
    @size_options = Elements.new(:xpath, "//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[@index='1']")
    @add_to_cart = Elements.new(:id, 'product_header_item_buy')
    @check_cart_button = Elements.new(:id, 'product_add_to_cart_confirm_cart')
    #It is possible to use id's here, but if more items are added, the id's are gone but this code is still correct
    @added_cart_item_name = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/cart_product_item_title']")
    @added_cart_item_price = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/cart_product_item_current_price']")
    @shopping_cart_product_value = Elements.new(:xpath, :"//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.TextView[2]")
  end

  def open_category_item
    @category_item.click
  end

  def choose_size
    @size_dropdown.click
    @size_options.click
  end

  def add_item_to_cart
    @added_item_name = Elements.new(:xpath, :"//android.widget.TextView[@resource-id='pl.com.fourf.ecommerce:id/product_header_item_name']").get_text
    @add_to_cart.click
  end

  def verify_added_items
    @check_cart_button.click
    added_item_name = @added_item_name
    raise "ELEMENT WAS NOT ADDED: #{added_item_name}" unless @added_cart_item_name.get_text == added_item_name
  end

  def verify_added_item_price
    unless @added_cart_item_price.get_text == @shopping_cart_product_value.get_text
      raise "ELEMENT PRICE NOT THE SAME: #{@added_cart_item_price.get_text}"
    end
  end
end
