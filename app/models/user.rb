class User < ActiveRecord::Base
  has_many :myvendors
  has_many :vendors, :through => :myvendors
end
