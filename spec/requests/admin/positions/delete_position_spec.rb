require 'rails_helper'

describe 'Admin::Positions', type: :request do
  describe 'DELETE /positions/:id' do
    before(:each) do
      @position = create(:position)
      delete "/admin/positions/#{@position.id}"
    end

    it 'returns success status' do
      expect(response).to have_http_status(:success)
    end

    it 'deletes the position' do
      expect(Position.find_by(id: @position.id)).to eq(nil)
    end
  end
end
