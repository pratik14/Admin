class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :age, :phone_number, :secondary_phone_number, :location 
  has_many :orders

  def name
    self.first_name + ' ' + self.last_name
  end
end
