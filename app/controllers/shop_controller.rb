class ShopController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index]
  
  # 1/3 Products, Cart etc.
  def index
    @categories = Category.where("parent_id IS NULL")
     
    @product = Category.find(params[:category_id]).products.first unless params[:category_id].nil?
    
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
  
  # 2/3 Addresses
  def checkout_addresses
   @addresses = current_user.addresses
   @address = Address.new
   
   respond_to do |format|
      format.html
      format.json
    end
  end
  
  # 3/3 Payment and overview
  def checkout_payment
    @cart_items = current_user.cart_items
    
    respond_to do |format|
      format.html
      format.json
    end
  end
  
end
