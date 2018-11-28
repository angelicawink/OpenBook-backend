class User < ApplicationRecord
  has_secure_password

  has_many :entries
  has_many :moments
  has_many :feelings, through: :moments
  has_many :settings, through: :moments

end
