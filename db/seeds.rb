# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'destroying all restaurants'
Restaurant.destroy_all

puts 'creating 5 restaurants...'

Restaurant.create(
  name: 'Kin',
  address: 'Martim Moniz',
  phone_number: '+351 000 000 001',
  category: 'chinese'
)
Restaurant.create(
  name: 'Brasserie',
  address: 'Chiado',
  phone_number: '+351 000 000 002',
  category: 'french'
)
Restaurant.create(
  name: 'Matte',
  address: 'Santos',
  phone_number: '+351 000 000 003',
  category: 'japanese'
)
Restaurant.create(
  name: 'Al Garage',
  address: 'Marquês de Pombal',
  phone_number: '+351 000 000 004',
  category: 'italian'
)
Restaurant.create(
  name: 'Sem Palavras',
  address: 'Alvalade',
  phone_number: '+351 000 000 005',
  category: 'belgian'
)

puts 'done!'
