# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '12 Upper St Martins Ln, West End, London WC2H 9FB', phone_number: '+44 20 7420 9320', category: 'chinese'}
as = { name: 'Las_du_falafel', address: '34, rue de Rosier 75004 Paris', phone_number: '+33 01 48 87 63 60', category: 'french'}
boui = { name: 'Le Boui Boui', address: '11 rue Marie Stuart 75001 Paris', phone_number: '+33 01 42 36 40 94', category: 'belgian'}
easter = { name: 'Easter', address: '56A Shoreditch High St, Marseille', phone_number: '+33 01 22 34 34', category: 'french' }
lila = { name: 'Lila', address: '45 rue St Maur Nantes', phone_number: '+33 01 12 34 34', category: 'japanese'}

[ dishoom, as, boui, easter, lila ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


