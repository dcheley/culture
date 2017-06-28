class Activity < ApplicationRecord
  belongs_to :rewards

  validates :name, presence: true
  validates :reward_id, numericality: { greater_than: 0 }
end
