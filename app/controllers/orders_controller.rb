class OrdersController < ApplicationController
  
  def index
    #@categories = 
    @product = Product.find(params[:product_id])
    
    @cart_item = CartItem.new
    @cart_item.product = @product
    
    @cart_items = current_user.cart_items
    
    respond_to do |format|
      format.html
      format.json
    end
  end
  
  
end
