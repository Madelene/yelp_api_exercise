class UsersController < ApplicationController
  protect_from_forgery

  def create
    new_user_saved = User.new(user_params).save

    if new_user_saved
      render json: { message: "You have successfully signed up!" }, status: 200
    else
      render json: { message: "Please try again" }, status: 200
    end
  end

  def index
    user = User.all

    if user
      render json: { users: user }, status: 200
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name)
  end
end
