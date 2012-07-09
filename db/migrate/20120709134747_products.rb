class Products < ActiveRecord::Migration
  def change
    create_table(:products) do |t|
      t.string :name, :null => false
      t.string :color, :null => false
    end
  end
end
