class OrdersController < ApplicationController
  
  def index
    @cart_items = User.find(1).cart_items
  end
  
  
end
