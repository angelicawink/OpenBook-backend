class EntrySerializer < ActiveModel::Serializer
  attributes :id, :user, :content
  belongs_to :user
end
