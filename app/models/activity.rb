class Activity < ApplicationRecord
  belongs_to :rewards, optional: true

  validates :name, presence: true
  validates :reward_id, numericality: { greater_than: 0 }
  validates :prize, numericality: { greater_than_or_equal_to: 0 }
end
