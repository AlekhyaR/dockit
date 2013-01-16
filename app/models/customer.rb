class Customer < ActiveRecord::Base
  attr_accessible :name, :address_attributes
  
#  validate_presence_of :name
  has_one :address
  accepts_nested_attributes_for :address
  belongs_to :invoice
end
