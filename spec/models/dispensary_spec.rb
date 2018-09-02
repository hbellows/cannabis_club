require 'rails_helper'

RSpec.describe Dispensary, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:full_address) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone_number) }
  end
  describe 'Relationships' do
    it { should have_many(:users) }
    it { should have_many(:dispensary_strains) }
    it { should have_many(:strains).through(:dispensary_strains) }
  end
end
