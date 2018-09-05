require 'rails_helper'

describe 'Admin show page' do
  it 'shows all patients and all strains' do
    dispensary = create(:dispensary)
    admin = create(:user, role: 1, dispensary: dispensary)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_dashboard_path

    expect(page).to have_content("Strains")
    expect(page).to have_content("Users")
  end
  it 'can create a new user' do
    dispensary = create(:dispensary)
    admin = create(:user, role: 1, dispensary: dispensary)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit new_admin_user_path

    fill_in "user[name]", with: "New User"
    fill_in "user[full_address]", with: "New User Address"
    fill_in "user[med_card_number]", with: 12345
    fill_in "user[plant_count]", with: 12
    fill_in "user[user_name]", with: "New User Name"
    fill_in "user[password]", with: "New User Password"

    click_on "Create New Patient"

    expect(current_path).to eq(admin_users_path)

    expect(page).to have_content("New User")
    expect(page).to have_content("New User Address")
    expect(page).to have_content("Med Card #{User.last.med_card_number}")
    expect(page).to have_content("Plant Count #{User.last.plant_count}")
    expect(page).to have_content("New User Name")
    expect(page).to have_content("New User Password")
  end
end
