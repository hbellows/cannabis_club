require 'rails_helper'

RSpec.feature "user can log out" do
  xscenario "after logging in" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit dispensary_path(dispensary)

    click_on("Login")
    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: "Password"
    click_on("Log In")

    # within(:css, "#nav-mobile") do
    click_on("Logout")
    # end

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Login")
    expect(page).to_not have_content("Logout")
  end
end
