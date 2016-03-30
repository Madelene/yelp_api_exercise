class UserFoodsController < ApplicationController
	protect_from_forgery

	expose(:user_id)				{ params[:user_id] }
	expose(:food_id)				{ params[:food_id] }

	def favorite
		favoriting = UserFood.create(user_id: user_id, food_id: food_id)
		
		if favoriting
			name = Food.where(id: food_id).pluck(:food_type)
			favoriting.save!
	
			render json: { food: name }, status: 200
		else 
			render json: { message: "You have not favorited any foods yet" }, status: 200
		end
	end


end
