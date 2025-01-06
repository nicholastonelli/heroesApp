# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Begin"

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

# 21 types of vessel

Ships_array = { "barge": {
"vessel_type": "barge",
"complement":120/5/40,
"speed":0.5,
"cost":6000,
"size": "Colossal",
"Seaworthiness": 0,
"Shiphandling": -6,
"Speed": 5,
"Overall AC": -3,
"Hull Sections": 80,
"Sink": 20,
"Section HP": 50,
"Section Hardness": 5,
"Section AC": 3,
"Ram": "6d6",
"Light Mounts": 2,
"Heavy Mounts": 2,
"Space": "100ft. by 40ft.",
"Height": "10ft",
"Complement": 120,
"Watch": 5,
"Rowers": 40,
"Cargo": 50,
"Cost": 6000
}
}

Ships_sample = { "barge"=> {
"type"=> "barge",
"complement"=>120/5/40
}
}
puts Ships_sample["barge"]["type"]

["barge"].each  do | ship |
  5.times do 
    Vessel.create! name: Faker::Creature::Animal.name
  end
end

puts "Vessels: #{Vessel.count}"