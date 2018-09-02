require 'rails_helper'

describe 'As an registered user' do
  describe 'sees user show page' do
    it 'should show user info' do
      dispensary = create(:dispensary)
      user = create(:user, dispensary: dispensary)
      strains = create_list(:strain, 2)

      visit user_path(user)

      expect(page).to have_content(dispensary.name)
      expect(page).to have_content(user.user_name)
      expect(page).to have_content(user.name)
      expect(page).to have_content(user.full_address)
      expect(page).to have_content(user.med_card_number)
      expect(page).to have_content(user.plant_count)
    end
  end
end
