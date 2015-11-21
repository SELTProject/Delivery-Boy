require 'rails_helper'

RSpec.describe BusinessdetailsController, type: :controller do

  describe "Business details form" do
    it "Business detail new page" do
      expect(Businessdetail).to receive(:new)
      get :new
      expect(response).to render_template("layouts/application","businessdetails/new")

    end
  end

end
