class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      
      t.integer :position, :null => false
      t.integer :product_id
      
      t.has_attached_file :image
      
      t.timestamps
    end
  end
end
