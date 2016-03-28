# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
filename = 'db/lib/tasks/yelp_api_exercise_restaurant.json'
options = {
  :key_mapping => {:unwanted_row => nil, :old_row_name => :new_name},
  # :value_converters => {:start_time => DateConverter, :end_time => DateConverter}
}

