require 'rails_helper'
require 'spec_helper'
RSpec.describe User, type: :model do
      it "has a valid user entry" do
        # user = User.new(
        # first_name: 'Aaron',
        # last_name: 'Sumner',
        # email: 'tester@example.com',
        # password: '12341234')
        # expect(user).to be_valid
        expect(FactoryGirl.create(:user)).to be_valid
      end

      it "is invalid without a firstname" do
       user = User.new(first_name: nil)
       user.valid?
       expect(user.errors[:first_name]).to include("can't be blank")
     end

     it "is invalid without a lastname" do
      user = User.new(last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end

      it "is invalid with a duplicate email address" do
      User.create(
        first_name: 'Joe', last_name: 'Tester',
       email: 'tester@example.com',
       password: '12341234'
      )
      user = User.new(
        first_name: 'Jane', last_name: 'Tester',
        email: 'tester@example.com',
        password: '12341234'
      )
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
    end


  end
