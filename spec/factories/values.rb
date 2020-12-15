FactoryBot.define do
  factory :value do
    title { FFaker::Lorem.sentence }
  end
end
