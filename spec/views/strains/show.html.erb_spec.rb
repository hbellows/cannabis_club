require 'rails_helper'

RSpec.describe "strains/show", type: :view do
  before(:each) do
    @strain = assign(:strain, Strain.create!(
      :stain => "Stain",
      :cannabinoid_abbreviation => "Cannabinoid Abbreviation",
      :cannabinoid => "Cannabinoid",
      :terpene => "Terpene",
      :medical_use => "Medical Use",
      :health_benefit => "Health Benefit",
      :category => "Category",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Stain/)
    expect(rendered).to match(/Cannabinoid Abbreviation/)
    expect(rendered).to match(/Cannabinoid/)
    expect(rendered).to match(/Terpene/)
    expect(rendered).to match(/Medical Use/)
    expect(rendered).to match(/Health Benefit/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Type/)
  end
end
