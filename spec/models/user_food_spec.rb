require 'spec_helper'
require 'rails_helper'

describe UserFood do
  it "is invalid without a user_id" do
    user_food = UserFood.new
    user_food.should_not be_valid
  end

  it "is invalid without a food_id" do
    user_food = UserFood.new
    user_food.should_not be_valid
  end
end