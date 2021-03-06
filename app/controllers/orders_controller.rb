class OrdersController < ApplicationController

  before_filter :authenticate_user!, :only => [:index, :create]

  def index
    @orders = current_user.orders
    
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @order = Order.new(user_id: current_user.id)
    @order.state = 'submitted'
    @order.save
    
    current_user.cart_items.each do |cart_item|
      order_item = OrderItem.new
      order_item.order_id = @order.id
      order_item.name = cart_item.product.name
      order_item.color = cart_item.product.color
      order_item.description = cart_item.product.description
      order_item.amount = cart_item.amount        
      
      cart_item.delete
      order_item.save
    end
    
    redirect_to :action => "index"
  end
end
