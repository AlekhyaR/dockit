class Address < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :line_1, :city, :state, :pincode
end
