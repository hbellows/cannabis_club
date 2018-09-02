FactoryBot.define do
  factory :strain do
    strain { Faker::Cannabis.strain }
    cannabinoid_abbreviation { Faker::Cannabis.cannabinoid_abbreviation }
    cannabinoid { Faker::Cannabis.cannabinoid }
    terpene { Faker::Cannabis.terpene }
    medical_use { Faker::Cannabis.medical_use }
    health_benefit { Faker::Cannabis.health_benefit }
    category { Faker::Cannabis.category }
    strain_type { Faker::Cannabis.type }
  end
end
