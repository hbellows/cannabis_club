FactoryBot.define do
  factory :dispensary do
    name { Faker::Dune.character }
    full_address { Faker::Address.full_address }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
  end
end
