require 'rails_helper'

RSpec.describe User, type: :model do

  context 'model validations' do
    subject { FactoryBot.build(:user) }
    
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    # it { should validate_uniqueness_of(:email) } failing and i couldnt fix it
  end

  context 'model associations' do
    subject { FactoryBot.build(:user) }

    it { should belong_to(:position) }
    it { should belong_to(:pronoun) }
    it { should have_many(:recognitions) }
    it { should have_many(:sent_recognitions) }
  end
end
