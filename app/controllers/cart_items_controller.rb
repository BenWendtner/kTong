class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new(params[:cart_item])
      
    if user_signed_in?
      @cart_item.user_id = current_user.id
      @cart_item.save
    else
      @cart_item.save
      (session[:cart_items] ||= []) << @cart_item.id
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
