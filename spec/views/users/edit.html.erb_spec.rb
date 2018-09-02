# require 'rails_helper'
#
# RSpec.describe "users/edit", type: :view do
#   before(:each) do
#     @user = assign(:user, User.create!(
#       :name => "MyString",
#       :full_address => "MyString",
#       :med_card_number => 1,
#       :plant_count => 1,
#       :user_name => "MyString",
#       :password_digest => "MyString",
#       :role => 1,
#       :dispensary => nil
#     ))
#   end
#
#   it "renders the edit user form" do
#     render
#
#     assert_select "form[action=?][method=?]", user_path(@user), "post" do
#
#       assert_select "input[name=?]", "user[name]"
#
#       assert_select "input[name=?]", "user[full_address]"
#
#       assert_select "input[name=?]", "user[med_card_number]"
#
#       assert_select "input[name=?]", "user[plant_count]"
#
#       assert_select "input[name=?]", "user[user_name]"
#
#       assert_select "input[name=?]", "user[password_digest]"
#
#       assert_select "input[name=?]", "user[role]"
#
#       assert_select "input[name=?]", "user[dispensary_id]"
#     end
#   end
# end
