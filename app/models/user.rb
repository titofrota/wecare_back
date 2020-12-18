class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  # validates_uniqueness_of :email

  belongs_to :position
  belongs_to :pronoun
  has_many :recognitions, foreign_key: :receiver_id
  has_many :sent_recognitions, class_name: :Recognition, foreign_key: :sender_id
end
