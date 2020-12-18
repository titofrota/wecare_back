class Pronoun < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :users
end
