class Activity < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :contents, optional: true

  has_many :trackers
  has_many :new_hires, class_name: :User, foreign_key: :user_email, primary_key: :email, through: :trackers

  validates :name, presence: true
  # validates :prize, numericality: { greater_than_or_equal_to: 0 }

  accepts_nested_attributes_for :trackers
end
