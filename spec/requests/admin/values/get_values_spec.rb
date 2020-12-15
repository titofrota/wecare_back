require 'rails_helper'

describe "Admin::Values", :type => :request do

  describe "GET /values" do
    before(:each) do
      @value = create(:value)
      get "/admin/values", as: :json
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end
  end
end