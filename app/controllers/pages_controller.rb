class PagesController < ApplicationController
  def home
    @title = "HR"
  end

  def about
    @title = "About- HR"
  end

  def contact
    @title = "Contact - HR"
  end
  
  def signup
    @title = "Signup - HR"
  end
  
  def signin
    @title = "Signin - HR"
  end

end
