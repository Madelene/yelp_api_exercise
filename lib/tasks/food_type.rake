namespace :import_foods do
  desc "utilize JSON file"

  task :start => :environment do 
    require 'json'
    filename = File.join(Rails.root, 'lib', 'assets', 'yelp_api_exercise_restaurant.json')
    File.open(filename, 'r') do |file|
      json = JSON.load(file)
      json.each do |object|
        food_attributes = object.to_hash
          
          food_type = food_attributes["category"]
          
          
          

          #food.split(",").map(&:strip) rescue []
          food_types = food_type.split(",")
          food_types.each do |food_strip|
            #p "This is the string BEFORE " + food_strip
            food_strip.strip
            #p "this is the string AFTER" + food_strip 
            food = Food.find_or_create_by( food_type: food_strip )
            food.update( food_type: food_strip )
          end
      end
    end
  end
end