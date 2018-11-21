class MomentSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :user, :feeling
  belongs_to :user
  belongs_to :feeling
end
