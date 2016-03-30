class UserRestaurantsController < ApplicationController
	protect_from_forgery

	expose(:user_id)                 { params[:user_id] }
  expose(:restaurant_id)           { params[:restaurant_id] }


	def favorite
		favoriting = UserRestaurant.create(user_id: user_id, restaurant_id: restaurant_id)
		
		if favoriting
			name = Restaurant.where(id: restaurant_id).pluck(:name)
			favoriting.save
			# name(following: true).save
			# no_name = Restaurant.where(id: restaurant_id) == nil
			render json: { restaurant: name }, status: 200
		else 
			render json: { message: "You have not favorited any restaurants yet" }, status: 200
		end

	end

  

end
