class AddFollowingColumnToUserRestaurants < ActiveRecord::Migration
  def change
    add_column :user_restaurants, :following, :boolean
  end
end
