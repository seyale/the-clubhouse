class Game < ApplicationRecord
  belongs_to :user
  has_many :users_games, dependent: :destroy
  has_many :users, through: :users_games

  validates :date, presence: true
  validates :time, presence: true
  validates :skill_level, presence: true
end
