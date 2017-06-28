class Reward < ApplicationRecord
  belongs_to :user
  has_many :activities

  validates :user_id, uniqueness: true
  validates :name, presence: true
end
