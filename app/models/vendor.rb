class Vendor < ActiveRecord::Base
  has_many :myvendors
  has_many :users, :through => :myvendors
  has_attached_file :logo, :styles => { :small => "100x100" }
  
  validates_presence_of :vendor_name
  
  
end
