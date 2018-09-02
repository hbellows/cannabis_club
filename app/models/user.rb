class User < ApplicationRecord
  validates :name, :full_address, :med_card_number, :plant_count, :user_name, :password, :role, presence: true, unless 'admin?'

  belongs_to :dispensary

  enum role: %i[user, admin]
end
