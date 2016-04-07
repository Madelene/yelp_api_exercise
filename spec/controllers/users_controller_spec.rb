require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, :type => :controller do 
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "returns a list of users" do
      get :index
      expect(response.content_type).to eq "app/json"
    end
  end 

  describe "POST #create" do
    it "responds successfully with an HTTP 200 status code" do
      get :create
      expect(response.status).to eq(200)
    end

    it "signs up users" do
      get :create
      expect(response).to render_template("new_user_saved")
    end
  end
end