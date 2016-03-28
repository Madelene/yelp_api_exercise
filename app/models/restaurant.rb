class Restaurant < ActiveRecord::Base
	has_many :user_restaurants
	has_many :users, :through => :user_restaurants

	validates :name, presence: true
	
end
