class MomentSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :user, :feeling, :setting
  belongs_to :user
  belongs_to :feeling
  belongs_to :setting
end
