class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :reward
  has_many :activities, :foreign_key => :user_id, :primary_key => :email
  has_many :feedbacks, through: :activities
  has_many :contents, through: :activities
end
