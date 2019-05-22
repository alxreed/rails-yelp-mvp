# frozen_string_literal: true

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
20.times do
  restaurants_attributes =
    {
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: %w[chinese italian japanese french belgian].sample
    }
  Restaurant.create!(restaurants_attributes)
end
