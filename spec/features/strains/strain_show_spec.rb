require 'rails_helper'

describe 'As an unregistered user' do
  describe 'sees dispensary show page and clicks link to see strain info' do
    it 'should take unregistered user to strain show page and show strain info' do
      strains = create_list(:strain, 2)
      dispensary = create(:dispensary)
      dispensary.strains = strains

      visit dispensary_path(dispensary)

      click_on(strains[0].strain)

      expect(current_path).to eq(strain_path(strains[0]))

      expect(page).to have_content(strains[0].strain)
      expect(page).to have_content(strains[0].cannabinoid)
      expect(page).to have_content(strains[0].terpene)
      expect(page).to have_content(strains[0].medical_use)
      expect(page).to have_content(strains[0].health_benefit)
      expect(page).to have_content(strains[0].category)
      expect(page).to have_content(strains[0].strain_type)
      # expect(page).to have_content(strains[0].image)
    end
  end
end
