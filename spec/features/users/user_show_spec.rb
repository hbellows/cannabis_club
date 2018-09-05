require 'rails_helper'

describe 'As a registered user' do
  describe 'sees user show page' do
    it 'should show user info' do
      dispensary = create(:dispensary)
      user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      expect(current_path).to eq(user_path(user))

      expect(page).to have_content(dispensary.name)
      expect(page).to have_content(user.user_name)
      expect(page).to have_content(user.name)
      expect(page).to have_content(user.full_address)
      expect(page).to have_content(user.med_card_number)
      expect(page).to have_content(user.plant_count)
    end
  end
end
