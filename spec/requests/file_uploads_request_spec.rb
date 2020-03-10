require 'rails_helper'

RSpec.describe 'FileUploads', type: :request do
  let(:hero) { create(:hero) }
  describe 'GET /new' do
    it 'returns http success' do
      get "/heros/#{hero.id}/file_uploads/new"
      expect(response).to have_http_status(:success)
    end
  end
end
