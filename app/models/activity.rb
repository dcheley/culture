class Activity < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :contents, optional: true

  has_many :trackers
  has_many :users, through: :trackers

  validates :name, presence: true
  # validates :prize, numericality: { greater_than_or_equal_to: 0 }
end
