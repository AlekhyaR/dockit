class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :customer
  has_many :products
  accept_nested_attributes_for :products

  has_one :status
  has_one :invoice_client
  has_one :client, :through => :invoice_client
  
  has_one :address
  accept_nested_attributes_for :address
  
  validates_presence_of :tax, :grand_total, :date
  
end
