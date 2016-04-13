require 'rails_helper'
require 'spec_helper'

RSpec.describe UserRestaurantsController, :type => :controller do 
  describe "GET #stop_favoriting" do
    it "responds successfully with an HTTP 200 status code" do
      restaurant = Restaurant.create!(name: "foobar")
      user = User.create!(username: "foobar", email: "asdf@gmail.com", first_name: "Maddie", last_name: "bar")
      user.restaurants << restaurant

      get :stop_favoriting, restaurant_id: restaurant.id, user_id: user.id
      expect(response).to be_successful
    end
  end
    # it "returns json format" do
    #   restaurant = Restaurant.create!(name: "foobar")
    #   user = User.create!(username: "foobarssss", email: "as@gmail.com", first_name: "Maddie", last_name: "bar")
    #   user.restaurants << restaurant

    #   get :stop_favoriting, restaurant_id: restaurant_id, user_id: user_id
    #   expect(response.content_type).to eq "application/json"
    # end

  describe "GET #favorite_restaurants" do
    it "responds successfully with an HTTP 200 status code" do
      restaurant = Restaurant.create!(name: "yay")
      user = User.create!(username: "blahblah", email: "fdsa@gmail.com", first_name: "Whee", last_name: "lkj")
      user.restaurants << restaurant
      # UserRestaurant.where(user_id: user_id).all 

      get :favorite_restaurants, user_id: user.id
      expect(response.status).to eq(200)
    end
  end
  #   it "returns json format" do
  #   get :favorite_restaurants
  #   expect(response.content_type).to eq "application/json"
  #   end
  # end
end