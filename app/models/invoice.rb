class Invoice < ActiveRecord::Base
  attr_accessible :tax, :grand_total, :date, :client_id, :status_id, :customer_attributes, :products_attributes
  
  has_one :customer
  accepts_nested_attributes_for :customer
  has_many :products
  accepts_nested_attributes_for :products

  has_one :status
  belongs_to :client  
#  validates_presence_of :tax, :grand_total, :date
  
end
