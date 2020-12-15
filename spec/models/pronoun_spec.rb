require 'rails_helper'

RSpec.describe Pronoun, type: :model do
  context 'model validations' do
    subject { FactoryBot.build(:pronoun) }

    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end

  context 'model associations' do
    subject { FactoryBot.build(:pronoun) }
    
    it { should have_many(:users) }
  end
end
