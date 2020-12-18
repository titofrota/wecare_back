class Recognition < ApplicationRecord
  validates :message, presence: true
  
  belongs_to :sender, class_name: :User
  belongs_to :receiver, class_name: :User
  belongs_to :value

  # def self.monthly_recognitions(month = Time.now)
  #   where(created_at: month.beginning_of_month..month.end_of_month).count
  # end

end
