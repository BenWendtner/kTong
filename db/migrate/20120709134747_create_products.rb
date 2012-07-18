class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products) do |t|
      t.string :name, :null => false
      t.string :color, :null => false
      t.integer :category_id, :null => false
      
      t.has_attached_file :image
      
      t.timestamps
    end
  end
end
