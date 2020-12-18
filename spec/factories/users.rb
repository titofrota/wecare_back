FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    association :position, factory: :position
    association :pronoun, factory: :pronoun
  end
end
