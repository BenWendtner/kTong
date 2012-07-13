class CartItemsController < ApplicationController

  def index
    
    if user_signed_in?
      @cart_items = current_user.cart_items
    else
      @cart_items = CartItem.find_all_by_id(session[:cart_items])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cart_items }
    end
  end


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
