require 'rails_helper'

RSpec.describe "strains/index", type: :view do
  before(:each) do
    assign(:strains, [
      Strain.create!(
        :stain => "Stain",
        :cannabinoid_abbreviation => "Cannabinoid Abbreviation",
        :cannabinoid => "Cannabinoid",
        :terpene => "Terpene",
        :medical_use => "Medical Use",
        :health_benefit => "Health Benefit",
        :category => "Category",
        :type => "Type"
      ),
      Strain.create!(
        :stain => "Stain",
        :cannabinoid_abbreviation => "Cannabinoid Abbreviation",
        :cannabinoid => "Cannabinoid",
        :terpene => "Terpene",
        :medical_use => "Medical Use",
        :health_benefit => "Health Benefit",
        :category => "Category",
        :type => "Type"
      )
    ])
  end

  it "renders a list of strains" do
    render
    assert_select "tr>td", :text => "Stain".to_s, :count => 2
    assert_select "tr>td", :text => "Cannabinoid Abbreviation".to_s, :count => 2
    assert_select "tr>td", :text => "Cannabinoid".to_s, :count => 2
    assert_select "tr>td", :text => "Terpene".to_s, :count => 2
    assert_select "tr>td", :text => "Medical Use".to_s, :count => 2
    assert_select "tr>td", :text => "Health Benefit".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
