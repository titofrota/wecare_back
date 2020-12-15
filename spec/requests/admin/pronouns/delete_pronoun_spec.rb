require 'rails_helper'

describe 'Admin::Pronouns', type: :request do
  describe 'DELETE /pronouns/:id' do
    before(:each) do
      @pronoun = create(:pronoun)
      delete "/admin/pronouns/#{@pronoun.id}"
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end

    it 'deletes the pronoun' do
      expect(Pronoun.find_by(id: @pronoun.id)).to eq(nil)
    end
  end
end
