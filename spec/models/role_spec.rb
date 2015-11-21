require 'rails_helper'

RSpec.describe Role, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid role entry" do
    role = Role.new(
    name: 'customer')
    expect(role).to be_valid
    #expect(FactoryGirl.create(:user)).to be_valid
  end
end
