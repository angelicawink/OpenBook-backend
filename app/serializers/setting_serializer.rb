class SettingSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :moments
  has_many :users, through: :moments
end
