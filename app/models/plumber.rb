class Plumber < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :age, :phone_number, :secondary_phone_number, :location 
end
