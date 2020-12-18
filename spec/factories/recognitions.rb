FactoryBot.define do
  factory :recognition do
    association :sender, factory: :user
    association :receiver, factory: :user
    message { FFaker::Lorem.paragraph }
    association :value, factory: :value
  end
end
