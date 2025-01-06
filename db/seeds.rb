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

Ships_array = { "barge"=> {
"vessel_type"=> "barge",
"speed"=>0.5,
"cost"=>6000,
"size"=> "Colossal",
"seaworthiness"=> 0,
"shiphandling"=> -6,
"overall AC"=> -3,
"hull sections"=> 80,
"sink"=> 20,
"section hp"=> 50,
"section hardness"=> 5,
"section ac"=> 3,
"ram"=> "6d6",
"rigging sections" => 0,
"rigging hp" => 0,
"rigging hardness" => 0,
"light mounts"=> 2,
"heavy mounts"=> 2,
"mounts"=> 2,
"space"=> "100ft. by 40ft.",
"height"=> "10ft",
"complement"=> 120,
"watch"=> 5,
"rowers"=> 40,
"cargo"=> 50
},
"caravel"=> {
"vessel_type"=> "caravel",
"speed"=>3,
"cost"=>10000,
"size"=> "Colossal",
"seaworthiness"=> +4,
"shiphandling"=> +2,
"overall AC"=> -3,
"hull sections"=> 24,
"sink"=> 6,
"section hp"=> 80,
"section hardness"=> 5,
"section ac"=> 3,
"ram"=> "4d6",
"rigging sections" => 3,
"rigging hp" => 80,
"rigging hardness" => 0,
"light mounts"=> 2,
"heavy mounts"=> 1,
"mounts"=> 3,
"space"=> "60ft. by 20ft.",
"height"=> "10ft",
"complement"=> 30,
"watch"=> 7,
"rowers"=> 0,
"cargo"=> 120
}
}


["barge", "caravel"].each  do | ship |
  5.times do 
    vessel = Vessel.create! name: Faker::Address.unique.city, 
    vessel_type: Ships_array[ship]["vessel_type"], 
    complement: Ships_array[ship]["complement"], 
    watch: Ships_array[ship]["watch"], 
    rowers: Ships_array[ship]["rowers"],"size"=> "Colossal",
    seaworthiness: Ships_array[ship]["seaworthiness"],
    shiphandling: Ships_array[ship]["shiphandling"],
    overall_ac: Ships_array[ship]["overall AC"],
    hull_sections: Ships_array[ship]["hull sections"],
    sink: Ships_array[ship]["sink"],
    section_hp: Ships_array[ship]["section hp"],
    section_hardness:Ships_array[ship]["section hardness"],
    section_ac: Ships_array[ship]["section ac"],
    ram: Ships_array[ship]["ram"],
    rigging_sections: Ships_array[ship]["rigging sections"],
    rigging_hardness: Ships_array[ship]["rigging hardness"],
    rigging_hp: Ships_array[ship]["rigging hp"],
    light_mounts: Ships_array[ship]["light mounts"],
    heavy_mounts: Ships_array[ship]["heavy mounts"],
    mounts: Ships_array[ship]["mounts"],
    space: Ships_array[ship]["space"],
    height: Ships_array[ship]["height"],
    cargo: Ships_array[ship]["cargo"]
  end
end

puts "Vessels: #{Vessel.count}"