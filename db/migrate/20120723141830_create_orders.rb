class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
        t.date :date, :null => false

      t.timestamps
    end
  end
end
