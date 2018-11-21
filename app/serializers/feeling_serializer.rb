class FeelingSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank
  has_many :moments
end
