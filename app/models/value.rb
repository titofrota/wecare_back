class Value < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :recognitions
end
