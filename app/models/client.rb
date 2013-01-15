class Client < ActiveRecord::Base
  # attr_accessible :title, :body
  validate_presence_of :name
  has_one :address
end
