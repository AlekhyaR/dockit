class Address < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :customer
  belongs_to :client
  validates_presence_of :line_1, :line_2, :city, :state, :pincode
end
