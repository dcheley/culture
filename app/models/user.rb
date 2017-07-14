class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :administrator, class_name: "User", foreign_key: :admin_id, optional: true
  has_many :employees, class_name: "User", foreign_key: :admin_id


  has_one :reward
  has_many :activities
  has_many :contents, through: :activities
  has_many :trackers, foreign_key: :user_email, primary_key: :email
  has_many :tracked_activities, through: :trackers
  has_many :feedbacks, through: :trackers

  validates :new_hire_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => [:create, :update] }, allow_blank: true
end
