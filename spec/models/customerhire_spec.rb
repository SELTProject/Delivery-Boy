require 'rails_helper'

RSpec.describe Customerhire, type: :model do
  it "has a valid Form entry" do
    customerh = Customerhire.new(
    id: nil, user_id: nil, no_items:1, restaurant_name: "Pancheros",restaurant_address1:"abcd", restaurant_address2:"abcd", restaurant_pin: "52246", order_status: "open", created_at: nil, updated_at: nil )
    expect(customerh).to be_valid
  end

  it "is invalid without a number of items" do
   customerh = Customerhire.new(no_items: nil)
   customerh.valid?
   expect(customerh.errors[:no_items]).to include("can't be blank")
  end
  it "is invalid without a restaurant name" do
   customerh = Customerhire.new(restaurant_name: nil)
   customerh.valid?
   
   expect(customerh.errors[:restaurant_name]).to include("can't be blank")
  end

  it "is invalid without a zip_code" do
   customerh = Customerhire.new(restaurant_address1: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_address1]).to include("can't be blank")
  end


  it "is invalid without a city" do
   customerh = Customerhire.new(restaurant_address2: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_address2]).to include("can't be blank")
  end


  it "is invalid without a state" do
   customerh = Customerhire.new(restaurant_pin: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_pin]).to include("can't be blank")
  end
end