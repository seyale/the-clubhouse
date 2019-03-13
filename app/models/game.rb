class Game < ApplicationRecord
  STEPS = [:add_game_type, :add_skill_level, :add_game_time, :add_additional_info, :review]

  attr_accessor(*STEPS)

  belongs_to :host, class_name: "User"
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :date, :time, presence: true, if: :game_time_or_active?
  validates :game_type, presence: true,
                        inclusion: {
                          in: %w[Singles Doubles],
                          message: "%{value} is not a valid game type"
                        }, if: :game_type_or_active?
  validates :skill_level, presence: true, if: :skill_level_or_active?

  private

  def game_time_or_active?
    add_game_time || active?
  end

  def game_type_or_active?
    add_game_type || active?
  end

  def skill_level_or_active?
    add_skill_level || active?
  end
end
