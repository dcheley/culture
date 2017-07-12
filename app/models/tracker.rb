class Tracker < ApplicationRecord
  belongs_to :users, optional: true, foreign_key: :user_email, primary_key: :email
  belongs_to :activities, optional: true
  belongs_to :feedback, optional: true
end
