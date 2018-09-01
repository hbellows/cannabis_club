require 'rails_helper'

RSpec.describe "Strains", type: :request do
  describe "GET /strains" do
    it "works! (now write some real specs)" do
      get strains_path
      expect(response).to have_http_status(200)
    end
  end
end
