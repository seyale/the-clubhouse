class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  #Hey alex

  def home
    # if current_user.nil?
    #   redirect_to (this is for you kevin)

    # @join = Game.where(status: "pending")
    # @watch = Game.where(status: "complete")
    # @my_games =
    @user = current_user
  end

  def join_game
    @all_games = Game.where(status: "pending") #, host: :current_user) #  && user_id: current_user.id
    @games = []
    @all_games.each do |game|
      @games << game if (game.host_id != current_user.id && !game.users.include?(current_user))
    end
  end

  def events
  end

  def landing
  end
end
