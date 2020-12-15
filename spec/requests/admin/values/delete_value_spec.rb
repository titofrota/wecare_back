require 'rails_helper'

describe 'Admin::Values', type: :request do
  describe 'DELETE /values/:id' do
    before(:each) do
      @value = create(:value)
      delete "/admin/values/#{@value.id}"
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end

    it 'deletes the value' do
      expect(Value.find_by(id: @value.id)).to eq(nil)
    end
  end
end
