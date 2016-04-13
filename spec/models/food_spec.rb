require 'rails_helper'
require 'spec_helper'

describe Food do

  it "is invalid without a food_type" do
    FactoryGirl.build(:food).should be_valid
  end

  it "should require a food_type" do
  	FactoryGirl.build(:food, :food_type => "").should_not be_valid
  end
  
end