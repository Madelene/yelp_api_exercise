class RestaurantsController < ApplicationController
	protect_from_forgery


	def index
		restaurant_list = Restaurant.all
    # restaurant_array = []
      restaurant_list.each do | r |
      	r.to_hash
     end
  end
    render json: { restaurant: restaurant_list.as_json }, status: 200
end
