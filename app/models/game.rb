class Game < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :date, presence: true
  validates :time, presence: true
  validates :game_type, presence: true, inclusion: { in: %w[Singles Doubles],
                                                    message: "%{value} is not a valid game type" }
  validates :skill_level, presence: true
end
