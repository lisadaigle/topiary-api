class User < ApplicationRecord
  has_many :schedules
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :carted_plants
end
