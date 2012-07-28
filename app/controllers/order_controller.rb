class OrderController < ApplicationController

  def index
    @orders = current_user.orders
    
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @order = Order.new();
  end
end
