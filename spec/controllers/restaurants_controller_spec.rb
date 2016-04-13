require 'rails_helper'
require 'spec_helper'

RSpec.describe RestaurantsController, :type => :controller do 
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

end