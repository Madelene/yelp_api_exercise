class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
