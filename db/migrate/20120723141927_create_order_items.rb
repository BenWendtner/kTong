class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.integer :order_id, :null => false
      
      t.string :name, :null => false
      t.string :color, :null => false
      t.integer :category_id, :null => false
      t.text :description, :null => false
      
      t.integer :amount, :null => false 
      t.timestamps
    end
  end
end
