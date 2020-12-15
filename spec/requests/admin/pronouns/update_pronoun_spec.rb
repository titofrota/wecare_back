require 'rails_helper'

describe 'Admin::Pronouns', type: :request do
  describe 'PUT /pronouns/:id' do
    context 'when admin updates pronoun' do
      before(:each) do
        @pronoun = create(:pronoun)
        @params = {
          "pronoun": {
            "title": 'New Title'
          }
        }
        patch "/admin/pronouns/#{@pronoun.id}", as: :json, params: @params
      end

      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end

      it 'updates the pronoun data' do
        expect(JSON.parse(response.body)['title']).to eq 'New Title'
      end
    end

    context 'when updating with null value' do
      before(:each) do
        @pronoun = create(:pronoun)
        @params = {
          "pronoun": {
            "title": ''
          }
        }
        patch "/admin/pronouns/#{@pronoun.id}", as: :json, params: @params
      end

      it 'returns unprocessable_entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end