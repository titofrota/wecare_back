require 'rails_helper'

describe 'Admin::Pronouns', type: :request do
  describe 'POST /admin/pronouns' do
    context 'when creating with valid values' do
      before(:each) do
        @params = {
          "pronoun": {
            "title": 'They'
          }
        }
        post '/admin/pronouns', as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end

      it 'returns the pronoun data' do
        expect(JSON.parse(response.body)['title']).to eq('They')
      end
    end

    context 'when creating with null value' do
      before(:each) do
        @params = {
          "pronoun": {
            "title": ''
          }
        }
        post '/admin/pronouns', as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end