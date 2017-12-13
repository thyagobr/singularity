require 'rails_helper'

RSpec.describe "Remarks", type: :request do
  describe "GET /remarks" do
    it "works! (now write some real specs)" do
      get remarks_path
      expect(response).to have_http_status(200)
    end
  end
end
