require 'rails_helper'

describe 'Admin::Positions', type: :request do
  describe 'POST /admin/positions' do
    context 'when creating with valid values' do
      before(:each) do
        @params = {
          "position": {
            "title": 'CTO'
          }
        }
        post '/admin/positions', as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end

      it 'returns the position data' do
        expect(JSON.parse(response.body)['title']).to eq('CTO')
      end
    end

    context 'when creating with null value' do
      before(:each) do
        @params = {
          "position": {
            "title": ''
          }
        }
        post '/admin/positions', as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end