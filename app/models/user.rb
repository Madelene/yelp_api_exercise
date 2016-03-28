class User < ActiveRecord::Base
	has_many :user_restaurants
	has_many :restaurants, :through => :user_restaurants

	validates :username, presence: true,
						 uniqueness: true	
	validates :email, presence: true,
						 uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true

end
