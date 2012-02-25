class User < ActiveRecord::Base
  has_many :myvendors
  has_many :vendors, :through => :myvendors

  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def picture
    if self.image != nil
      url = self.image
    else  
      url= "icon_no_photo_80x80.png"
    end  
  end
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.image = auth["info"]["image"]
    end
  end
end
