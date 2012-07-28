class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id, :null => false
      
      t.string :name, :null => false
      t.string :color, :null => false
      t.text :description
      
      t.integer :amount, :null => false 
      t.timestamps
    end
  end
end
