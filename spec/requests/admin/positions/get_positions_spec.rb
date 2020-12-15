require 'rails_helper'

describe "Admin::Positions", :type => :request do

  describe "GET /positions" do
    before(:each) do
      @position = create(:position)
      get "/admin/positions", as: :json
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end
  end
end