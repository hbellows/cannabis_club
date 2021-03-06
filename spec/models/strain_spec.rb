require 'rails_helper'

RSpec.describe Strain, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:strain) }
    it { should validate_presence_of(:cannabinoid_abbreviation) }
    it { should validate_presence_of(:cannabinoid) }
    it { should validate_presence_of(:terpene) }
    it { should validate_presence_of(:medical_use) }
    it { should validate_presence_of(:health_benefit) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:strain_type) }
  end
  describe 'Relationships' do
    it { should have_many(:dispensary_strains) }
    it { should have_many(:dispensaries).through(:dispensary_strains) }
  end
end
