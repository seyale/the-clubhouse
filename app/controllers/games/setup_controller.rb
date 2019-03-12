class Games::SetupController < ApplicationController
  include Wicked::Wizard

  before_action :set_game

  steps :game_type, :skill_level, :game_time, :additional_info, :review

  def show
    render_wizard
  end

  def update
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

