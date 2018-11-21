class Feeling < ApplicationRecord
  has_many :moments
  has_many :users, through: :moments
end
