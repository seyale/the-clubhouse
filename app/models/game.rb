class Game < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :date, presence: true, if: :active?
  validates :time, presence: true, if: :active?
  validates :game_type, presence: true, inclusion: { in: %w[Singles Doubles],
                                                    message: "%{value} is not a valid game type" }, if: :active?
  validates :skill_level, presence: true, if: :active?
end
