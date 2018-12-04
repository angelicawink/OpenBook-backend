class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :content
end
