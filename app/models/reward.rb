class Reward < ApplicationRecord
  belongs_to :user, optional: true
  has_many :activities

  validates :name, presence: true
  validates :user_id, uniqueness: true, allow_blank: true
end
