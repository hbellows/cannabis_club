# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars'}, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

Strain.destroy_all
Dispensary.destroy_all
User.destroy_all

dispensary = Dispensary.create(
  name: "Colorado Cannabis Club",
  full_address: Faker::Address.full_address,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number
  )

20.times do
  dispensary.strains.create(
  strain: Faker::Cannabis.unique.strain,
  cannabinoid_abbreviation: Faker::Cannabis.cannabinoid_abbreviation,
  cannabinoid: Faker::Cannabis.cannabinoid,
  terpene: Faker::Cannabis.terpene,
  medical_use: Faker::Cannabis.medical_use,
  health_benefit: Faker::Cannabis.health_benefit,
  category: Faker::Cannabis.category,
  strain_type: Faker::Cannabis.type,
  image: 'https://img.sensiseeds.com/en/feminized-seeds/whitelabel/purple-bud-xl.jpg'
  )
end

20.times do
  dispensary.users.create(
  name: Faker::Dune.character,
  full_address: Faker::Address.full_address,
  med_card_number: rand(10000000..99999999),
  plant_count: rand(5..99),
  user_name: Faker::Internet.unique.username(5..8),
  password: Faker::Internet.password
  )
end
