class Myvendor < ActiveRecord::Base
  belongs_to :user
  belongs_to :vendor
  
  validates_uniqueness_of :vendor_id, :scope => :user_id
end
