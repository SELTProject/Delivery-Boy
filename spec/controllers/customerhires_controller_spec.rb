require 'rails_helper'

RSpec.describe CustomerhiresController, type: :controller do
     describe "Customer Hire form" do
    it "Customer Hire new page" do
      expect("Customerhire").to receive(:new)
      get :new
      expect(response).to render_template("layouts/application","customerhires/new")

    end
  end

end
