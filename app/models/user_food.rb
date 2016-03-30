class UserFood < ActiveRecord::Base
	belongs_to :user 
	belongs_to :food 

	validates :user_id, presence: true
	validates :food_id, presence: true

	scope :active, -> { where(favoriting: true) }


	def unfavorite
		update favoriting: false
	end
	
end
