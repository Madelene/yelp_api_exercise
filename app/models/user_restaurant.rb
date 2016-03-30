class UserRestaurant < ActiveRecord::Base
	belongs_to :user  
	belongs_to :restaurant 

	validates :user_id, presence: true
	validates :restaurant_id, presence: true

	scope :active, -> { where(favoriting: true) }

	def unfavorite
		update favoriting: false
	end

end
