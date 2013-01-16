class Invoice < ActiveRecord::Base
  attr_accessible :tax, :grand_total, :date, :status_id, :customer_attributes, :products_attributes
  
  has_one :customer
  accepts_nested_attributes_for :customer
  has_many :products
  accepts_nested_attributes_for :products

  has_one :status
  has_one :invoice_client
  has_one :client, :through => :invoice_client
  
#  validates_presence_of :tax, :grand_total, :date
  
end
