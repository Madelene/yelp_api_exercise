
namespace :import_restaurants do
  desc "imports data from JSON file"

  task :start => :environment do #run environment before my task
    require 'json'
    filename = File.join(Rails.root, 'lib', 'assets', 'yelp_api_exercise_restaurant.json')
    File.open(filename,'r') do | json_text |
      json = JSON.load(json_text)
      # json.each do |row|
      #  options_hash = row.to_hash
      #  restaurant = Restaurant.find_or_create_by!(name: options_hash["name"], zip: options_hash["zip"])
      #  restaurant = restaurant.update(options_hash)
      # end
    end
  end
end