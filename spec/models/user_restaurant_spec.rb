require 'spec_helper'
require 'rails_helper'

describe UserRestaurant do

  it "should have a valid factory" do
    FactoryGirl.build(:user_restaurant).should be_valid
  end

  it "is invalid without a user_id" do
    FactoryGirl.build(:user_restaurant, :user_id => "").should_not be_valid
  end

  it "is invalid without a restaurant_id" do
    FactoryGirl.build(:user_restaurant, :restaurant_id => "").should_not be_valid
  end
  
end