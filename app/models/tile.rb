class Tile < ActiveRecord::Base
  attr_accessible :name, :colour, :height, :weight
  has_many :orders
end
