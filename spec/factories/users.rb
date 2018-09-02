FactoryBot.define do
  factory :user do
    name { Faker::Dune.character }
    full_address { Faker::Address.full_address }
    med_card_number { rand(10**10) }
    plant_count { rand(5..99) }
    user_name { "MyString" }
    password_digest { "MyString" }
    role { 0 }
    dispensary { nil }
  end
end
