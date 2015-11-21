require 'rails_helper'

RSpec.describe Driverdetail, type: :model do
  it "has a valid user entry" do
    driverdetail = Driverdetail.new(
    vehicle_no: '312312',
    license_id: '213213')
    expect(driverdetail).to be_valid
  end

  it "is invalid without a vehicle_no" do
   driverdetail = Driverdetail.new(vehicle_no: nil)
   driverdetail.valid?
   expect(driverdetail.errors[:vehicle_no]).to include("can't be blank")
  end

  it "is invalid without a license_id" do
   driverdetail = Driverdetail.new(license_id: nil)
   driverdetail.valid?
   expect(driverdetail.errors[:license_id]).to include("can't be blank")
  end


end
