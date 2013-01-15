class Product < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :invoice
  validates_presence_of :item, :price, :quantity

end
