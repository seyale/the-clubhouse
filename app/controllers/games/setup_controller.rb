class Games::SetupController < ApplicationController
  include Wicked::Wizard

  before_action :set_game

  steps(*Game::STEPS)

  def show
    render_wizard
  end

  def update
    case step
    when :add_game_type
      @game.add_game_type = true
    when :add_skill_level
      @game.add_skill_level = true
    when :add_game_time
      @game.add_game_time = true
    when :review
      @game.active = true
    end

    @game.update_attributes(game_params)
    render_wizard @game
  end

  private

  def game_params
    params.require(:game).permit(:skill_level, :game_type, :date, :time, :additional_info)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end

