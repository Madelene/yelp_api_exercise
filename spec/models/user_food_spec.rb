require 'spec_helper'
require 'rails_helper'

describe UserFood do

  it "should have a valid factory" do
    FactoryGirl.build(:user_food).should be_valid
  end

  it "is invalid without a user_id" do
    FactoryGirl.build(:user_food, :user_id => "").should_not be_valid
  end

  it "is invalid without a food_id" do
    FactoryGirl.build(:user_food, :food_id => "").should_not be_valid
  end
  
end