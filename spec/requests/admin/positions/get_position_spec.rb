require 'rails_helper'

describe "Admin::Positions", :type => :request do

  describe "GET /positions/:id" do
    before(:each) do
      @position = create(:position)
    end

    context 'when position exists' do
      it 'returns success status' do
        get "/admin/positions/#{@position.id}", as: :json
        expect(response).to have_http_status(:success)
      end
  
      it 'returns the position' do
        get "/admin/positions/#{@position.id}", as: :json
        expect(response.body).to eq(@position.to_json)
      end
    end
  end
end