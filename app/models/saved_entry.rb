class SavedEntry < ApplicationRecord
  belongs_to :user
  belongs_to :entry
  validates :entry_id, uniqueness: true
end
