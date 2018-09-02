class Strain < ApplicationRecord
  has_many :dispensary_strains
  has_many :dispensaries, through: :dispensary_strains

  validates_presence_of :strain, :cannabinoid_abbreviation, :cannabinoid
  validates_presence_of :terpene, :medical_use, :health_benefit, :category
  validates_presence_of :type, :image

end
