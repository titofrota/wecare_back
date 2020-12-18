FactoryBot.define do
  factory :position do
    title { FFaker::Company.position }
  end
end
