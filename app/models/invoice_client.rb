class InvoiceClient < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :invoice
  belongs_to :client
  
end
