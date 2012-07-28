class OrderController < ApplicationController

  def index
    @orders = current_user.orders
    
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @order = Order.new(user_id: current_user.id, date: DateTime.now)
    @order.save
    redirect_to :action => "index"
  end
end
