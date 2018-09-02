FactoryBot.define do
  factory :user do
    name { Faker::Dune.character }
    full_address { Faker::Address.full_address }
    med_card_number { rand(10**10) }
    plant_count { rand(5..99) }
    sequence :user_name { |n| "user_name#{n}" }
    password { "MyString" }
    role { 0 }
    dispensary { nil }
  end
end
