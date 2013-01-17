class Client < ActiveRecord::Base
  attr_accessible :name, :address_attributes
#  validate_presence_of :name
  belongs_to :user
  has_many :invoices
  has_one :address
  accepts_nested_attributes_for :address
  
end
