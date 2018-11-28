class Setting < ApplicationRecord
  has_many :moments
  has_many :users, through: :moments
end
