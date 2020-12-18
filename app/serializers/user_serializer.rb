class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  
  belongs_to :position
  belongs_to :pronoun
end
