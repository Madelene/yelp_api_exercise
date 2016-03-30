class AddIsActiveColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :is_active, :boolean
  end
end
