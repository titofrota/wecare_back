require 'rails_helper'

describe "Admin::Pronouns", :type => :request do

  describe "GET /pronouns/:id" do
    before(:each) do
      @pronoun = create(:pronoun)
    end

    context 'when pronoun exists' do
      it 'returns success status' do
        get "/admin/pronouns/#{@pronoun.id}", as: :json
        expect(response).to have_http_status(:success)
      end
  
      it 'returns the pronoun' do
        get "/admin/pronouns/#{@pronoun.id}", as: :json
        expect(response.body).to eq(@pronoun.to_json)
      end
    end
  end
end