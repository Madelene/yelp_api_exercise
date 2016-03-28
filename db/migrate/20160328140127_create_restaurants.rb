class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :food_type
      t.string :location
      t.string :website

      t.timestamps null: false
    end
  end
end
