class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.string  :name
      t.string  :colour
      t.float   :height
      t.float   :weight
      t.timestamps
    end
  end
end
