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
      expect(page).to have_content(strains[-1].strain)
    end
  end
end
