class SavedEntrySerializer < ActiveModel::Serializer
  attributes :id, :user, :entry, :title
end
