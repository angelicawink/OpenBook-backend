class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :moments
  has_many :entries
end
