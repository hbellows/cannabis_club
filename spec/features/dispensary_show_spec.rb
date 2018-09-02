require 'rails_helper'

describe 'As an unregistered user' do
  describe 'sees dispensary show page' do
    it 'should show all currently available strains' do
      strains = create_list(:strain, 2)
      dispensary = create(:dispensary)
      dispensary.strains = strains

      visit dispensary_path(dispensary)

      expect(page).to have_content(dispensary.name)
      expect(page).to have_content(strains[0].strain)
      expect(page).to have_content(strains[0].cannabinoid_abbreviation)
      expect(page).to have_content(strains[0].medical_use)
      expect(page).to have_content(strains[0].health_benefit)
      # expect(page).to have_content(strains[0].image)
      expect(page).to have_content(strains[-1].strain)
      expect(page).to have_content(strains[-1].cannabinoid_abbreviation)
      expect(page).to have_content(strains[-1].medical_use)
      expect(page).to have_content(strains[-1].health_benefit)
      # expect(page).to have_content(strains[-1].image)
    end
  end
end
