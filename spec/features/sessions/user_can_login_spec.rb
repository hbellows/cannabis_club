require 'rails_helper'

RSpec.feature "user can log in" do
  xscenario "with correct credentials" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Login")

    expect(current_path).to eq("/login")

    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: user.password

    click_on("Log In")

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Logged in as #{user.user_name}")

    expect(page).to_not have_content("Login")
    expect(page).to have_content("Logout")
  end

  xscenario "with incorrect password" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Log In")

    expect(current_path).to eq("/login")

    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: "WrongPassword"

    click_on("Log In")

    expect(current_path).to eq("/login")
    expect(page).to have_content("Incorrect Password for #{user.user_name}")
  end

  xscenario "with incorrect username" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Log In")

    expect(current_path).to eq("/login")

    fill_in "user[user_name]", with: "Jo Shmo"
    fill_in "user[password]", with: "Password"

    click_on("Log In")

    expect(current_path).to eq("/login")
    expect(page).to have_content("Username Jo Shmo Not Registered")
  end
end
