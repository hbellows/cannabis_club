require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :full_address => "Full Address",
      :med_card_number => 2,
      :plant_count => 3,
      :user_name => "User Name",
      :password_digest => "Password Digest",
      :role => 4,
      :dispensary => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Full Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
