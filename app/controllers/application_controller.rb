class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    
    if !session[:cart_items].nil?
      CartItem.find_all_by_id(session[:cart_items]).each do |cart_item|
        cart_item.user_id = current_user.id
        merge_cart_items(current_user.cart_items,cart_item)
      end
    end
    
    root_path
    
  end
  
  
  def merge_cart_items(cart_items, new_cart_item)
      found = false
      cart_items.each do |cart_item|
        if cart_item.product_id == new_cart_item.product_id
          found = true
          cart_item.amount += new_cart_item.amount
          cart_item.save
        end
      end
      new_cart_item.save if found == false
  end

  
end
