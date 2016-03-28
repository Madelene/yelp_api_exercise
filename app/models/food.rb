class Food < ActiveRecord::Base
	has_many :restaurant_foods
	has_many :restaurants, :through => :restaurant_foods

	has_many :user_foods
	has_many :users, :through => :user_foods

	validates :type, presence: true
end
