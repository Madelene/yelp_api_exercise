require 'spec_helper'
require 'rails_helper'

describe Follow do

   it "should have valid factory" do
    FactoryGirl.build(:follow).should be_valid
   end

   it "should require a target_id" do
    FactoryGirl.build(:follow, :target_id => "").should_not be_valid
  end

   it "should require a user_id" do
    FactoryGirl.build(:follow, :user_id => "").should_not be_valid
  end
  
end

