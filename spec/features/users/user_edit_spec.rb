require 'rails_helper'

describe 'As a registered user' do
  describe 'sees link to edit page' do
    it 'allows user to edit their address' do
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
      expect(page).to have_content("New Address, New City, Same State, New Zip")
      expect(page).to have_content(user.med_card_number)
      expect(page).to have_content(user.plant_count)

      click_on("Edit")
      expect(current_path).to eq(edit_user_path(user))

      fill_in "user[full_address]", with: "New Address, New City, Same State, New Zip"

      click_on("Update User")
      expect(current_path).to eq(user_path(user))

      expect(page).to have_content(dispensary.name)
      expect(page).to have_content(user.user_name)
      expect(page).to have_content(user.name)
      expect(page).to have_content("New Address, New City, Same State, New Zip")
      expect(page).to have_content(user.med_card_number)
      expect(page).to have_content(user.plant_count)
    end
  end
end
