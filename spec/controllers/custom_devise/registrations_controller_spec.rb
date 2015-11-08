require 'rails_helper'
require "spec_helper"
RSpec.describe CustomDevise::RegistrationsController, type: :controller do
  describe "User registration page" do
    it "allows new users to register" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("custom_devise/registrations/new")
    end
  end

  describe "User registration page" do
    it "allows new users to register" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("custom_devise/registrations/new")
    end
  end

  describe "User registration page" do
    it "should redirect to home page on signup" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("custom_devise/registrations/new")
      post :create, {:user => {:first_name => "Balaji", :last_name => "T", :email => "bala92@gmail.com", :password => "password", :password_confirmation => "password", :rid=> "customer"}}
      expect(response).to redirect_to("/")
    end
  end

  describe "User edit profile page" do
    it "allows user to edit his profile details" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("custom_devise/registrations/new")
      post :create, {:user => {:first_name => "Balaji", :last_name => "T", :email => "bala92@gmail.com", :password => "password", :password_confirmation => "password", :rid=> "customer"}}
      expect(response).to redirect_to("/")
      get :edit
      expect(response).to render_template("custom_devise/registrations/edit")
    end
  end

  describe "User edit profile page" do
    it "should redirect to home page on successful edit" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("custom_devise/registrations/new")
      post :create, {:user => {:first_name => "Balaji", :last_name => "T", :email => "bala92@gmail.com", :password => "password", :password_confirmation => "password", :rid=> "customer"}}
      expect(response).to redirect_to("/")
      get :edit
      post :update, {:user => {:first_name => "Balaji", :last_name => "T", :email => "bala92@gmail.com", :password => "password1", :password_confirmation => "password1", :current_password => "password"}}
      expect(response).to render_template("/")
    end
  end

end
