class Activity < ApplicationRecord
  belongs_to :rewards, optional: true
  belongs_to :user
  belongs_to :feedback

  validates :name, presence: true
  validates :reward_id, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }
  validates :contact, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
  validates :prize, numericality: { greater_than_or_equal_to: 0 }
end
