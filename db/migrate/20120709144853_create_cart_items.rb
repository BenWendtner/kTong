class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :user
      t.references :product
      t.integer :amount, :null => false
      t.timestamps
    end
  end
end
