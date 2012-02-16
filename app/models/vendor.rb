class Vendor < ActiveRecord::Base
  has_many :myvendors
  has_many :users, :through => :myvendors
end
