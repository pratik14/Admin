class Order < ActiveRecord::Base
  attr_accessible :status, :price, :customer_id, :tile_id
  belongs_to  :customer
  belongs_to  :tile

  scope :request, where(:status => "Request")
  scope :pending, where(:status => "Pending")
  scope :complete, where(:status => "Completed")
end
