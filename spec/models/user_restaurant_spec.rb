require 'spec_helper'
require 'rails_helper'
# require 'UserRestaurant'

describe UserRestaurant do
  it "is invalid without a user_id" do
    user_restaurant = UserRestaurant.new
    user_restaurant.should_not be_valid
  end

  it "is invalid without a restaurant_id" do
    user_restaurant = UserRestaurant.new
    user_restaurant.should_not be_valid
  end
end