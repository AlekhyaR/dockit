class Address < ActiveRecord::Base
  attr_accessible :line_1, :city, :state, :pincode, :primary_email, :secondary_email, :mobile_number, :alternate_number
#  validates_presence_of :line_1, :city, :state, :pincode
  belongs_to :customer
  belongs_to :client
end
