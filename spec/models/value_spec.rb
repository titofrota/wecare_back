require 'rails_helper'

RSpec.describe Value, type: :model do
  context 'validations' do
    subject { FactoryBot.build(:value) }

    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end

  context 'associations' do
    subject { FactoryBot.build(:value) }

    it { should have_many(:recognitions) }
  end
end
