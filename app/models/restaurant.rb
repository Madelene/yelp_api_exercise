class Restaurant < ActiveRecord::Base
	has_many :user_restaurants
	has_many :users, :through => :user_restaurants

	has_many :restaurant_foods
	has_many :foods, :through => :restaurant_foods

	validates :name, presence: true

end
