require 'rails_helper'

describe "Admin::Pronouns", :type => :request do

  describe "GET /pronouns" do
    before(:each) do
      @pronoun = create(:pronoun)
      get "/admin/pronouns", as: :json
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end
  end
end