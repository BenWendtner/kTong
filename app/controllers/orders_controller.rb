class OrdersController < ApplicationController
  
  def index
    #@categories = 
    @product = Product.find(params[:product_id])
    @cart_item = CartItem.new
    @cart_items = User.find(1).cart_items
    
    respond_to do |format|
      format.html
      format.json
    end
  end
  
  
end
