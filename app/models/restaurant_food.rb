class RestaurantFood < ActiveRecord::Base
	belongs_to :restaurant 
	belongs_to :food 

	validates :restaurant_id, presence: true
	validates :food_id, presence: true
end
