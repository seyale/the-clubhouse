class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :update, :destroy]

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def index
    @games = Game.all
  end

  def edit
  end

  def update
  end

  def destroy
    @game = Game.destroy
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:user_id, :skill_level, :game_type, :date, :time, :additional_info)
  end
end
