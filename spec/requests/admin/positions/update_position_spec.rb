require 'rails_helper'

describe "Admin::Positions", :type => :request do

  describe "PUT /positions/:id" do
    context 'when admin updates position' do
      before(:each) do
        @position = create(:position)
        @params = {
            "position": {
                "title": "New Title",
            }
        }
        patch "/admin/positions/#{@position.id}", as: :json, params: @params
      end
  
      it 'returns success status' do
        expect(response).to have_http_status(:success)
      end
  

      it 'updates the position data' do
        expect(JSON.parse(response.body)['title']).to eq "New Title"
      end
    end

    context 'when updating with null value' do
      before(:each) do
        @position = create(:position)
        @params = {
          "position": {
            "title": ''
          }
        }
        patch "/admin/positions/#{@position.id}", as: :json, params: @params
      end

      it 'returns unprocessable_entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end