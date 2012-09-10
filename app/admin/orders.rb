ActiveAdmin.register Order do
  filter :customer, :collection => Customer.all.collect{|x| [x.first_name,x.id]}
  filter :price

  scope :pending
  scope :complete
  scope :request
  form do |f|
    f.inputs "Details" do
      f.input :status, :as => :select, :collection => ['Pending', 'Request', 'Complete']
      f.input :price, :as => :select, :collection => [10,20,30,40,50]
      f.input :customer, :collection => Customer.all.collect{|x| [x.first_name,x.id]}
      f.input :tile, :collection => Tile.all.collect{|x| [x.name,x.id]}
    end
    f.buttons
  end

end
