class RenameFollowingColumnToFavoritingColumnInUserRestaurantsTable < ActiveRecord::Migration
  def change
  	rename_column :user_restaurants, :following, :favoriting 
  end
end
