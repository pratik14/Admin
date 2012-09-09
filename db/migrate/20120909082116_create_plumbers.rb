class CreatePlumbers < ActiveRecord::Migration
  def change
    create_table :plumbers do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :age
      t.integer :phone_number
      t.integer :secondary_phone_number
      t.string  :location
      t.timestamps
    end
  end
end
