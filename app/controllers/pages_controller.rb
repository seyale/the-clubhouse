class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @all_joins = Game.where(status: "pending") #, host: :current_user) #  && user_id: current_user.id
    @joins = []
    @all_joins.each do |game|
      @joins << game if (game.host_id != current_user.id && !game.users.include?(current_user))
    end

    @all_watches = Game.where(status: "completed")
    @watches = []
    @all_watches.each do |game|
      @watches << game if (game.host_id != current_user.id && !game.users.include?(current_user))
    end

    @my_games = Game.where(status: "pending")
    @games = []
    @my_games.each do |game|
      @games << game if (game.host_id = current_user.id)
    end

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
