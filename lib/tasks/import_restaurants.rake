
namespace :import_restaurants do
  desc "imports data from JSON file"

  task :start => :environment do 
    require 'json'
    filename = File.join(Rails.root, 'lib', 'assets', 'yelp_api_exercise_restaurant.json')
    File.open(filename, 'r') do |file|
      json = JSON.load(file)
      json.each do |object|
        restaurant_attributes = object.to_hash
          name = restaurant_attributes["name"]
          food_type = restaurant_attributes["category"]
          location = restaurant_attributes["address"]
          description = restaurant_attributes["description"]
          website = restaurant_attributes["logo_image_file"]
          city = restaurant_attributes["city"]
          state = restaurant_attributes["state"]
          zip = restaurant_attributes["zip"]

          restaurant = Restaurant.find_or_create_by(name: name, food_type: food_type, location: location, website: website, description: description)
          restaurant.update(name: name, food_type: food_type, location: location, website: website, description: description)
      end
    end
  end
end



   
    
      
        
        