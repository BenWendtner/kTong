class ShopController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:checkout]
  
  def index
    @categories = Category.all
    
    if params[:category_id].nil?
      @product = Category.find(5).products.first
    else
      @product = Category.find(params[:category_id]).products.first
    end
    
    @cart_item = CartItem.new
    @cart_item.product = @product
    
    if user_signed_in?
      @cart_items = current_user.cart_items
    else
      @cart_items = CartItem.find_all_by_id(session[:cart_items])
    end
    
    respond_to do |format|
      format.html
      format.json
    end
  end
  
  def checkout
    @cart_items = current_user.cart_items
    
    respond_to do |format|
      format.html
      format.json
    end
  end
  
end