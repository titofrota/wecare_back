require 'rails_helper'

describe "Admin::Values", :type => :request do

  describe "PUT /values/:id" do
    context 'when admin updates value' do
      before(:each) do
        @value = create(:value)
        @params = {
            "value": {
                "title": "New Title",
            }
        }
        patch "/admin/values/#{@value.id}", as: :json, params: @params
      end
  
      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end
  

      it 'updates the value data' do
        expect(JSON.parse(response.body)['title']).to eq "New Title"
      end
    end

    context 'when updating with null value' do
      before(:each) do
        @value = create(:value)
        @params = {
          "value": {
            "title": ''
          }
        }
        patch "/admin/values/#{@value.id}", as: :json, params: @params
      end

      it 'returns unprocessable_entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end