

require 'rails_helper'
require 'spec_helper'


RSpec.describe CustomerhiresController, type: :controller do
     describe "Customer Hire form" do
    it "Customer Hire new page" do
    #  expect(Customerhire).to receive(:new)
    #  expect("customerhire").to receive(:new)
      get :new
      expect(Customerhire).to redirect_to('/users/sign_in')

    end
  end
  
 
   describe "Customer Hire 1" do
    it "Customer Hire new page" do
    #  expect(Customerhire).to receive(:new)
    #  expect("customerhire").to receive(:new)
    # get :new

    end
  end
  describe "Valid Item number"
  it "No of items empty" do
   customerh = Customerhire.new(no_items: nil)
   customerh.valid?
   expect(customerh.errors[:no_items]).to include("can't be blank")
  end
  
  
  it "Restaurant name is empty" do
   customerh = Customerhire.new(restaurant_name: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_name]).to include("can't be blank")
  end
  
  
   it "Restaurant address is empty" do
   customerh = Customerhire.new(restaurant_address1: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_address1]).to include("can't be blank")
  end
  
  
   it "Restaurant pin is empty" do
   customerh = Customerhire.new(restaurant_pin: nil)
   customerh.valid?
   expect(customerh.errors[:restaurant_pin]).to include("can't be blank")
  end
   it "Everything is valid" do
   customerh = Customerhire.new(no_items:1, restaurant_name: "Pancheros",restaurant_address1:"abcd", restaurant_pin: nil)
   customerh.valid?
    expect(flash[:notice]).to eq(nil)
  end
    

end








