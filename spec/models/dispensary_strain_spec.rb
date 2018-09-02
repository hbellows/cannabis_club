require 'rails_helper'

RSpec.describe DispensaryStrain, type: :model do
  describe 'Relationships' do
    it { should belong_to(:dispensary) }
    it { should belong_to(:strain) }
  end
end
