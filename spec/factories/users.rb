FactoryBot.define do
  factory :user do
    name { "MyString" }
    full_address { "MyString" }
    med_card_number { 1 }
    plant_count { 1 }
    user_name { "MyString" }
    password_digest { "MyString" }
    role { 1 }
    dispensary { nil }
  end
end
