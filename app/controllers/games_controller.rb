class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :update, :destroy]

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(host: current_user)
    redirect_to game_create_path(Wicked::FIRST_STEP, game_id: @game.id)
  end

  def index
    @games = Game.where(status: "completed") #, host: :current_user) #  && user_id: current_user.id
    @show_games = []
    @games.each do |game|
      @show_games << game if (game.host_id != current_user.id && !game.users.include?(current_user))
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    # @participants = @game.participants
    Game.destroy(@game.id)
    redirect_to root_path
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:user_id, :skill_level, :game_type, :date, :time, :additional_info)
  end
end
