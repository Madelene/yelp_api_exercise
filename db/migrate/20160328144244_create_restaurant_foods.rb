class CreateRestaurantFoods < ActiveRecord::Migration
  def change
    create_table :restaurant_foods do |t|
      t.integer :food_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
