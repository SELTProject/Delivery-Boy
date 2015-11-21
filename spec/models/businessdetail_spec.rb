
require 'rails_helper'

RSpec.describe Businessdetail, type: :model do
  it "has a valid Businessdetail entry" do
    businessdetail = Businessdetail.new(
    business_name: "ddasda",
    address_line_1: "asdasd",
    zip_code: "1234",
    city: "ddasda",
    state: "asdsad",
    country: "dasd" )
    expect(businessdetail).to be_valid
  end

  it "is invalid without a business_name" do
   businessdetail = Businessdetail.new(business_name: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:business_name]).to include("can't be blank")
  end

  it "is invalid without a address_line_1" do
   businessdetail = Businessdetail.new(address_line_1: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:address_line_1]).to include("can't be blank")
  end

  it "is invalid without a zip_code" do
   businessdetail = Businessdetail.new(zip_code: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:zip_code]).to include("can't be blank")
  end

  it "is invalid without a city" do
   businessdetail = Businessdetail.new(city: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:city]).to include("can't be blank")
  end

  it "is invalid without a state" do
   businessdetail = Businessdetail.new(state: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:state]).to include("can't be blank")
  end

  it "is invalid without a country" do
   businessdetail = Businessdetail.new(country: nil)
   businessdetail.valid?
   expect(businessdetail.errors[:country]).to include("can't be blank")
  end


end
