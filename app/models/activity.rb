class Activity < ApplicationRecord
  belongs_to :rewards

  validates :name, presence: true
end
