class Product < ActiveRecord::Base
  attr_accessible :item, :price, :quantity, :description
  belongs_to :invoice
  validates_presence_of :item, :price, :quantity
end
