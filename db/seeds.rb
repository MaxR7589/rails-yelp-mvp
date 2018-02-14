# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:      "japanese",
    phone_number:  "01 00 00 00 00"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     "italian",
    phone_number: "01 01 01 01 01"
  },
  {
    name:         'Chez Michel',
    address:      '8 rue du plateau, 75013, Paris',
    category:      "belgian",
    phone_number:  "01 02 02 02 02"
  },
  {
    name:         'Chez Jacquie',
    address:      '12 rue du fromage rappé, 75017, Paris',
    category:     "belgian",
    phone_number: "01 03 03 03 03"
  },
  {
    name:         'Chez Alexandre',
    address:      '13 rue pas très loin de République, 75011, Paris',
    category:     'italian',
    phone_number: "01 04 04 04 04"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
