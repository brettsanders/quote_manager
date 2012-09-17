# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  { title: "+ Add Rating",           position: 1 },
  { title: "Absolute Favorite",      position: 2 },
  { title: "Good",                   position: 3 },
  { title: "Mediocre",               position: 4 },
  { title: "Worthless",              position: 5 },
  { title: "Deliciously Dreadful",   position: 6 }
].each do |attributes|
  Rating.find_or_create_by_title(attributes)
end

puts "Seeded Fucking DB"