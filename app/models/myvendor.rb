class Myvendor < ActiveRecord::Base
  belongs_to :user
  belongs_to :vendor
  
  validates_uniqueness_of :vendor_id, :scope => :user_id
  
  def vendor_choose
    vendor.vendor_name if vendor
  end
  
  def vendor_choose=(vendor_name)
    self.vendor = Vendor.find_or_create_by_vendor_name(vendor_name) unless vendor_name.blank?
  end
end
