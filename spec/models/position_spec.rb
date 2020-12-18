require 'rails_helper'

RSpec.describe Position, type: :model do
  context 'model validations' do
    subject { FactoryBot.build(:position) }

    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end

  describe 'associations' do
    subject { FactoryBot.build(:position) }
    
    it { should have_many(:users) }
  end
end
