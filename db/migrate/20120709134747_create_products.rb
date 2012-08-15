class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products) do |t|
      t.integer :category_id, :null => false
       
      t.string :name, :null => false
      t.string :color, :null => false
      t.text :description, :null => false
      t.decimal :price, :null => false
     
      t.timestamps
    end
  end
end
