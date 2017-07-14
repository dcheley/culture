class Tracker < ApplicationRecord
  belongs_to :users, optional: true, foreign_key: :user_email, primary_key: :email
  belongs_to :activities, optional: true
  belongs_to :feedback, optional: true

  validates :user_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }
  validates :contact, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
end
