class Game < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :participations, dependent: :destroy
  has_many :users, through: :users_games

  validates :date, presence: true
  validates :time, presence: true
  validates :skill_level, presence: true
end
