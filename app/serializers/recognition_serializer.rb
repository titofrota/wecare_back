class RecognitionSerializer < ActiveModel::Serializer
  attributes :id, :message

  belongs_to :sender
  belongs_to :receiver
  belongs_to :value
end
