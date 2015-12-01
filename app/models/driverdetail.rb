class Driverdetail < ActiveRecord::Base
  belongs_to :user

  validates :vehicle_no, :license_id, presence: true
end
