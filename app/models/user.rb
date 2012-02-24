class User < ActiveRecord::Base
  has_many :myvendors
  has_many :vendors, :through => :myvendors
  has_attached_file :image
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.photo = auth["info"]["image"]
    end
  end
end
