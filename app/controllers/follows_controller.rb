class FollowsController < ApplicationController
  protect_from_forgery

  expose(:target_id)          { params[:target_id] }
  expose(:user_id)            { params[:user_id] }

  def following
    follow = Follow.new(follower_params).save

    if follow
      render json: { message: "You are now following user #{target_id}" }, status: 200
    else 
      render json: { message: "You already follow this person" }, status: 200
    end
  end

  private

  def follower_params
    params.require(:follow).permit(:target_id, :user_id)
  end
end


  #   following_user = Follow.new(follower_id: follower_id, followee_id: followee_id)
  #   # followers = Follow.where(follower_id: follower_id )

  #   if following_user != nil 
  #     following_user.save
  #     render json: { message: "You are now following a user" }, status: 200
  #   else 
  #     render json: { message: "You have not favorited any users yet" }, status: 200
  #   end
  # end

