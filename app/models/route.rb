class Route < ApplicationRecord
  has_many :debriefs, through: :users
  has_many :users, through: :debriefs

  validates :name, presence: true
  validates :style, presence: true
  validates :rating, presence: true
  validates :stars, presence: true
  validates :pitches, presence: true
  validates :location, presence: true
end
