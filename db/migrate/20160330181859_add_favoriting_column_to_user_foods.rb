class AddFavoritingColumnToUserFoods < ActiveRecord::Migration
  def change
    add_column :user_foods, :favoriting, :boolean
  end
end
