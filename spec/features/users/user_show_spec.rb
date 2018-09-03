require 'rails_helper'

describe 'As a registered user' do
  describe 'sees user show page' do
    it 'should show user info' do
      dispensary = create(:dispensary)
      user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

      visit dispensary_path(dispensary)
      click_on('Login')
      fill_in "user[user_name]", with: "User"
      fill_in "user[password]", with: "Password"
      click_on('Login')

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
