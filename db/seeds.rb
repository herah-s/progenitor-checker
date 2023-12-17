require "json"

puts "Removing all records..."
Warframe.destroy_all

file = File.read("./app/assets/avatar_data.json")
avatar_data = JSON.parse(file)

avatar_data["Warframes"].each do |warframe, info|
  next if warframe.to_s == "Sevagoth's Shadow"

  puts "Generating a record..."
  Warframe.create!(
    name: warframe.to_s,
    element: info["Progenitor"]
  )
end
