class RestaurantsController < ApplicationController
  protect_from_forgery

  expose(:id)                   { params[:id] }
  expose(:name)                 { params[:name] }
  expose(:description)          { params[:description] }
  expose(:food_type)            { params[:food_type] }
  expose(:location)             { params[:location] }
  expose(:website)              { params[:website] }

  def index
    restaurant = Restaurant.all
    
    if restaurant
      render json: { restaurant: restaurant }, status: 200
    end
  end

  def create
    new_restaurant_saved = Restaurant.new(restaurant_params).save

    if new_restaurant_saved
      render json: { message: "Your restaurant has been successfully created" }, status: 200
    else
      render json: { message: "Something went wrong. Please try again" }, status: 200
    end
  end

  def update
    found_restaurant = Restaurant.find_by(id: id)
    restaurant_confirm = found_restaurant.update(restaurant_params)

    if restaurant_params == nil
      render json: { data: 'Please try updating your restaurant again'}, status: 204 #no content
    else restaurant_confirm
      render json: {restaurant: restaurant_confirm.as_json }, status: 200
    end
  end  

  def destroy
    destroyed_restaurant = Restaurant.find_by(id: id)
    destroyed_restaurant.disable
    render json: { data: "Restaurant is now inactive"}, status: 200
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :food_type, :location, :website)
  end
end
