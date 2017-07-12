class Content < ApplicationRecord
  has_many :users, through: :activities
end
