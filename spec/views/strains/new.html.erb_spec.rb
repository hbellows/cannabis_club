# require 'rails_helper'
#
# RSpec.describe "strains/new", type: :view do
#   before(:each) do
#     assign(:strain, Strain.new(
#       :stain => "MyString",
#       :cannabinoid_abbreviation => "MyString",
#       :cannabinoid => "MyString",
#       :terpene => "MyString",
#       :medical_use => "MyString",
#       :health_benefit => "MyString",
#       :category => "MyString",
#       :type => ""
#     ))
#   end
#
#   it "renders new strain form" do
#     render
#
#     assert_select "form[action=?][method=?]", strains_path, "post" do
#
#       assert_select "input[name=?]", "strain[stain]"
#
#       assert_select "input[name=?]", "strain[cannabinoid_abbreviation]"
#
#       assert_select "input[name=?]", "strain[cannabinoid]"
#
#       assert_select "input[name=?]", "strain[terpene]"
#
#       assert_select "input[name=?]", "strain[medical_use]"
#
#       assert_select "input[name=?]", "strain[health_benefit]"
#
#       assert_select "input[name=?]", "strain[category]"
#
#       assert_select "input[name=?]", "strain[type]"
#     end
#   end
# end
