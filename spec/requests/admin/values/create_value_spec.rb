require 'rails_helper'

describe 'Admin::Values', type: :request do
  describe 'POST /admin/values' do
    context 'when creating with valid values' do
      before(:each) do
        @params = {
          "value": {
            "title": 'Being helpful'
          }
        }
        post '/admin/values', as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end

      it 'returns the value data' do
        expect(JSON.parse(response.body)['title']).to eq('Being helpful')
      end
    end

    context 'when creating with null value' do
      before(:each) do
        @params = {
          "value": {
            "title": ''
          }
        }
        post '/admin/values', as: :json, params: @params
      end

      it 'returns unprocessable_entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end