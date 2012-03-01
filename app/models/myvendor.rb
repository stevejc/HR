class Myvendor < ActiveRecord::Base
  belongs_to :user
  belongs_to :vendor
  
  validates_uniqueness_of :vendor_id, :scope => :user_id
  
  def vendor_choose
    vendor.try(:vendor_name)
  end
  
  def vendor_choose=(vendor_name)
    self.vendor = Vendor.find_or_create_by_vendor_name(vendor_name) if vendor_name.present?
  end
end
