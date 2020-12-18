FactoryBot.define do
  factory :pronoun do
    title { FFaker::Name.pronouns }
  end
end
