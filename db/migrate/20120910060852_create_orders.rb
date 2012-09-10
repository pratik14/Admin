class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :status
      t.float   :price
      t.integer :customer_id
      t.integer :tile_id
      t.timestamps
    end
  end
end
