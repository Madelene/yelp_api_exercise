require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, :type => :controller do 
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "returns json format" do
      get :index
      expect(response.content_type).to eq "application/json"
    end
  end 

  # describe "POST #create" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     post :create
  #     new_user_saved = User.new(user_params).save
  #     { "users": [
  #       {
  #       "username": "maddiec",
  #       "email": "maddie@gmail.org",
  #       "first_name": "Madelene",
  #       "last_name": "Campski",
  #       "created_at": "2016-03-28T14:20:43.076Z",
  #       "updated_at": "2016-03-28T14:20:43.076Z"
  #       },
  #       ] }
  #     expect(response.status).to eq(200)
  #   end

  #   it "signs up users" do
  #     post :create
  #     expect(response).to render_template("new_user_saved")
  #   end
  # end
end