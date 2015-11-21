require 'rails_helper'

RSpec.describe DriverdetailsController, type: :controller do

  describe "Driver details form" do
    it "driver detail new page" do
      expect(Driverdetail).to receive(:new)
      get :new
      expect(response).to render_template("layouts/application","driverdetails/new")
    end
  end

  # describe "Driver details form" do
  #   it "driver detail create page" do
  #     expect(Driverdetail).to receive(:new)
  #     get :new
  #     expect(response).to render_template("layouts/application","driverdetails/new")
  #     expect(Driverdetail).to receive(:create)
  #     post :create ,{:driverdetail => {:license_id => "123423", :vehicle_no => "TN102323" }}
  #     expect(response).to redirect_to("/layouts/application")
  #   end
  # end

end
