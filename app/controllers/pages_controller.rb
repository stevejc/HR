class PagesController < ApplicationController
  def home
    @title = "HR"
    @vendors = Vendor.all
    @vendor = Vendor.new
    @myvendor = Myvendor.new

  end

  def about
    @title = "About- HR"
  end

  def contact
    @title = "Contact - HR"
  end
  
  def signup
    @title = "Signup - HR"
    @user = User.new
  end
  
  def signin
    @title = "Signin - HR"
  end
  

end
