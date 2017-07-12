class Activity < ApplicationRecord
  belongs_to :users
  belongs_to :contents, optional: true

  has_many :trackers
  has_many :new_hires, class_name: :User, through: :trackers

  validates :name, presence: true
  validates :user_id, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
  validates :contact, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
  validates :prize, numericality: { greater_than_or_equal_to: 0 }
end
