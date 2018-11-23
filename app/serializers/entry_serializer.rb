class EntrySerializer < ActiveModel::Serializer
  attributes :id, :user, :content, :created_at
  belongs_to :user
end
