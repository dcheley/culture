class Activity < ApplicationRecord
  belongs_to :user, optional: true, :foreign_key => :user_id, :primary_key => :email
  belongs_to :feedback, optional: true

  validates :name, presence: true
  validates :user_id, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
  validates :contact, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
  validates :prize, numericality: { greater_than_or_equal_to: 0 }
end
