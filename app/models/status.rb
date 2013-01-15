class Status < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :code, :name
  
  attr_accessible :code, :name
end
