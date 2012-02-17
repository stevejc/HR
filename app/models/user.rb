class User < ActiveRecord::Base
  has_many :myvendors
  has_many :vendors, :through => :myvendors
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
