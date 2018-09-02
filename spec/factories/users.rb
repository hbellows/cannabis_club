FactoryBot.define do
  factory :user do
    name { Faker::Dune.character }
    full_address { Faker::Address.full_address }
    med_card_number { rand(10000000..99999999) }
    plant_count { rand(5..99) }
    user_name { Faker::Internet.unique.username(5..8) }
    password { Faker::Internet.password }
    role { 0 }
    dispensary { nil }
  end
end
