class User < ApplicationRecord
  has_many :routes
  has_many :debriefs, through: :routes

  has_secure_password

  validates :email, presence: true, uniqueness: true 
  validates :username, presence: true, uniqueness: true
  # validates :location, presence: true
end
