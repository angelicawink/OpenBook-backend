class Moment < ApplicationRecord
  belongs_to :user
  belongs_to :feeling
  belongs_to :setting
end
