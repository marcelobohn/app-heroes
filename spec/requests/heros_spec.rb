require 'rails_helper'

RSpec.describe "Heros", type: :request do
  describe "GET /heros" do
    it "returns http success" do
      get heros_path
      expect(response).to have_http_status(200)
    end
  end
end
