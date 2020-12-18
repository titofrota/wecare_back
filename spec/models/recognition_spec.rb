require 'rails_helper'

RSpec.describe Recognition, type: :model do
  include ActiveSupport::Testing::TimeHelpers

  context 'model validations' do
    subject { FactoryBot.build(:recognition) }

    it { should validate_presence_of(:message) }
  end

  context 'model associations' do
    subject { FactoryBot.build(:recognition) }

    it { should belong_to(:sender) }
    it { should belong_to(:receiver) }
    it { should belong_to(:value) }
  end

#   describe '#monthly_recognitions' do
#     before do
#       travel_to Time.zone.local(2020, 11, 24, 01, 04, 44) do
#         @recognition = create :recognition
#       end

#     end

#     it 'returns the quantity of monthly recognitions' do
#       expect(@recognition.self.monthly_recognitions).to eq(2)
#     end
#   end
end
