class EntrySerializer < ActiveModel::Serializer
  attributes :id, :user, :content, :created_at, :private
  belongs_to :user
end
