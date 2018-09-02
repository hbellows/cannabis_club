class User < ApplicationRecord
  validates_presence_of :name, :full_address, :med_card_number, :plant_count, :user_name, :password_digest, :role

  belongs_to :dispensary

  enum role: %i[user, admin]
end
