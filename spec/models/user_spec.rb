require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:full_address) }
    it { should validate_presence_of(:med_card_number) }
    it { should validate_presence_of(:plant_count) }
    it { should validate_presence_of(:user_name) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:role) }
  end
  describe 'Relationships' do
    it { should belong_to(:dispensary) }
  end
  describe 'roles' do
    it "can be created as an admin" do
      dispensary = create(:dispensary)
      user = create(:user, role: 1, dispensary: dispensary)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end
    it "can be created as a default user" do
      dispensary = create(:dispensary)
      user = create(:user, dispensary: dispensary)

      expect(user.role).to eq("user")
      expect(user.user?).to be_truthy
    end
  end
end
