class RestaurantsController < ApplicationController
	protect_from_forgery


	def index
		restaurant = Restaurant.all
    
    if restaurant
    	render json: { restaurant: restaurant }, status: 200
    end
  end
end
