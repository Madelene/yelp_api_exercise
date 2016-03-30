class UserRestaurantsController < ApplicationController
	protect_from_forgery

	expose(:user_id)                 { params[:user_id] }
  expose(:restaurant_id)           { params[:restaurant_id] }


	def favorite
		favoriting = UserRestaurant.create(user_id: user_id, restaurant_id: restaurant_id)
		
		if favoriting
			name = Restaurant.where(id: restaurant_id).pluck(:name)
			favoriting.save!
	
			render json: { restaurant: name }, status: 200
		else 
			render json: { message: "You have not favorited any restaurants yet" }, status: 200
		end
	end

  def stop_favoriting
  	unfavorite_restaurant = UserRestaurant.find_by(restaurant_id: restaurant_id, user_id: user_id)
  	unfavorite_restaurant.unfavorite

  	render json: { data: "You have now unfavorited this restaurant" }, status: 200
  end

  def favorite_restaurants
  	list_of_faves = UserRestaurant.where(user_id: user_id).all 
  	
  	if list_of_faves == []
  		render json: { message: "You still need to favorite some restaurants!" }, status: 200
  	else 
  		render json: { favorite_restaurants: list_of_faves }, status: 200
  	end
  end
end
