class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :customer
  has_many :products
  has_one :status
  has_one :invoice_client
  has_one :client, :through => :invoice_client
  
  validates_presence_of :tax, :grand_total, :date
  
end
