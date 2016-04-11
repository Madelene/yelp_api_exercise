require 'spec_helper'
require 'rails_helper'

describe Follow do 
  it "is invalid without a target_id" do
    follow = Follow.new
    follow.should_not be_valid
  end

  it "is invalid without a user_id" do
    follow = Follow.new
    follow.should_not be_valid
  end
end