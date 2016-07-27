require 'rails_helper'

describe 'Profiles API' do
  describe 'GET /me' do
    context 'unauthorized' do
      it 'returns 401 status if there is no access_token' do
        get '/api/v1/profiles/me', headers: { format: :json }
        expect(response.status).to eq 401
      end
      it 'returns 401 status if access_token is invalid' do
        get '/api/v1/profiles/me', headers: {  format: :json, access_token: 'bla-bla-bla' }
        expect(response.status).to eq 401
      end
    end
    context 'authorized' do

    end
  end
end