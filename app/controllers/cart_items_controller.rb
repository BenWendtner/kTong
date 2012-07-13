class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new(params[:cart_item])    
      
    if user_signed_in?
      @cart_item.user_id = current_user.id
      merge_cart_items(current_user.cart_items,@cart_item)
      @cart_items = current_user.cart_items
    else
      merge_cart_items(CartItem.find_all_by_id(session[:cart_items]),@cart_item)
      (session[:cart_items] ||= []) << @cart_item.id
      @cart_items = CartItem.find_all_by_id(session[:cart_items])
    end  
     
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    respond_to do |format|
      format.js
    end
  end
  
end
