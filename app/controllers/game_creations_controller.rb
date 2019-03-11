class GameCreationsController < ApplicationController
  include Wicked::Wizard
  steps :game_type, :skill_level, :date, :time, :additional_info

  def show
    @game = Game.find(params[:game_id])
    render_wizard
  end

  def update
    @game = Game.find(params[:game_id])
    @game.update_attributes(params[:game])
    render_wizard @game
  end

end
