class User < ApplicationRecord
  validates :name, :full_address, :med_card_number, :plant_count, :user_name, :role, presence: true, unless: :admin?
  validates :password, presence: true, on: :create

  has_secure_password

  belongs_to :dispensary

  enum role: %i[user admin]
  # enum role: ["default", "admin"]
end
