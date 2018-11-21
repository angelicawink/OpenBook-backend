class User < ApplicationRecord
  has_many :entries
  has_many :moments
  has_many :feelings, through: :moments

end
