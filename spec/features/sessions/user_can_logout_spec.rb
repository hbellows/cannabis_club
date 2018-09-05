require 'rails_helper'

xdescribe "log out" do
  it "allows a user to log out" do
    dispensary = create(:dispensary)
    user = create(:user, user_name: "User", password: "Password", dispensary: dispensary)

    visit login_path

    click_on("Login")
    fill_in "user[user_name]", with: user.user_name
    fill_in "user[password]", with: user.password

    click_on("Login")

    # expect(current_path).to eq(user_path(user))
    within(".nav navbar-nav") do
      click_on("Logout")
    end

    expect(current_path).to eq(root_path)

    expect(page).to have_content("Login")
    expect(page).to_not have_content("Logout")
  end
end
