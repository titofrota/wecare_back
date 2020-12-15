require 'rails_helper'

describe "Admin::Values", :type => :request do

  describe "GET /values/:id" do
    before(:each) do
      @value = create(:value)
    end

    context 'when value exists' do
      it 'returns success status' do
        get "/admin/values/#{@value.id}", as: :json
        expect(response).to have_http_status(:success)
      end
  
      it 'returns the value' do
        get "/admin/values/#{@value.id}", as: :json
        expect(response.body).to eq(@value.to_json)
      end
    end
  end
end