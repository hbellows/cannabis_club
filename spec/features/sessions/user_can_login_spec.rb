require 'rails_helper'

describe "login" do
  it 'allows users to login successfully' do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Login")

    expect(current_path).to eq(login_path)

    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: user.password

    click_on("Log In")

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome #{user.user_name}!")

    expect(page).to_not have_content("Login")
    expect(page).to have_content("Logout")
  end
  it "prohibits login with incorrect password" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Login")

    expect(current_path).to eq(login_path)

    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: "WrongPassword"

    click_on("Login")

    expect(current_path).to eq(login_path)

    within(".notice") do
      expect(page).to have_content("Incorrect Password for #{user.user_name}")
      expect(page).to_not have_content("Logged in as #{user.user_name}")
    end
  end
  it "prohibits login with incorrect username" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    expect(page).to have_content("Login")

    click_on("Login")

    expect(current_path).to eq(login_path)

    fill_in "user[user_name]", with: "Jo Shmo"
    fill_in "user[password]", with: "Password"

    click_on("Login")

    expect(current_path).to eq(login_path)
    expect(page).to have_content("Username Jo Shmo Not Registered")
  end
end
