require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :full_address => "Full Address",
        :med_card_number => 2,
        :plant_count => 3,
        :user_name => "User Name",
        :password_digest => "Password Digest",
        :role => 4,
        :dispensary => nil
      ),
      User.create!(
        :name => "Name",
        :full_address => "Full Address",
        :med_card_number => 2,
        :plant_count => 3,
        :user_name => "User Name",
        :password_digest => "Password Digest",
        :role => 4,
        :dispensary => nil
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
