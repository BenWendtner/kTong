class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      
      t.integer :user_id, :null => false
      
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.string :address, :null => false
      t.string :location, :null => false
      t.integer :postalcode, :null => false
      t.string :country, :null => false
      
      t.timestamps
    end
  end
end
