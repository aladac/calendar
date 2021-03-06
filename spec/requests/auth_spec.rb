# frozen_string_literal: true

describe 'Auths', type: :request do
  describe 'GET /login' do
    it 'returns http success' do
      get '/auth/login'
      expect(response).to have_http_status(:redirect)
    end
  end

  describe 'GET /logout' do
    it 'returns http success' do
      get '/auth/logout'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /callback' do
    it 'returns http success' do
      get '/auth/callback'
      expect(response).to have_http_status(:redirect)
    end
  end
end
