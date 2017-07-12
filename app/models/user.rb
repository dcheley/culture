class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :reward
  has_many :activities
  has_many :contents, through: :activities
  has_many :tracked_activities, class_name: :Activity, foreign_key: :user_email, primary_key: :email, through: :trackers
  has_many :feedbacks, through: :trackers
end
