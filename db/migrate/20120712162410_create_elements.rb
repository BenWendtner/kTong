class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      
      t.string :name,         :null => false
      t.integer :instock,     :null => false
      
      t.string :color
      t.string :code
      
      t.integer :width,       :null => false
      t.integer :height,      :null => false
      t.integer :depth,       :null => false
      t.integer :foldfactor,  :null => false
      t.decimal :weight,      :null => false
      
      t.timestamps
    end
  end
end
