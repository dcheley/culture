class Feedback < ApplicationRecord
  has_many :trackers
  has_many :users, through: :trackers
end
