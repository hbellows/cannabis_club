class Dispensary < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :dispensary_strains
  has_many :strains, through: :dispensary_strains

  validates_presence_of :name, :full_address, :email, :phone_number
end
