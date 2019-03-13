class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing]

  def home
    if current_user
      @my_games = Game.where(active: true).order(date: :asc).order(time: :asc)
      @games = []
      @my_games.each do |game|
        @games << game if (game.host_id == current_user.id || game.users.include?(current_user))
      end

      @all_joins = Game.where(status: "pending", active: true).order(date: :asc).order(time: :asc) #, host: :current_user) #  && user_id: current_user.id
      @joins = []
      @all_joins.each do |game|
        @joins << game if (game.host_id != current_user.id && !game.users.include?(current_user))
      end

      @all_watches = Game.where(status: "completed", active: true).order(date: :asc).order(time: :asc)
      @watches = []
      @all_watches.each do |game|
        @watches << game if (game.host_id != current_user.id && !game.users.include?(current_user))
      end
    else
      redirect_to landing_path
    end
  end

  def join_game
    @all_games = Game.where(status: "pending", active: true) #, host: :current_user) #  && user_id: current_user.id
    @games = []
    @all_games.each do |game|
      @games << game if (game.host_id != current_user.id && !game.users.include?(current_user))
    end

    if params[:game_type]
      @search_games = Game.where('game_type ILIKE ?', params[:game_type])
    elsif params[:skill_level]
      @search_games = Game.where('skill_level ILIKE ?', params[:skill_level])
    elsif params[:date]
      @search_games = Game.where('date ILIKE ?', params[:date])
    elsif params[:query].present?
      @search_games = Game.search_by_names_of_players(params[:query])
    else
      @search_games = Game.where(status: "pending") #, host: :current_user) #  && user_id: current_user.id
    end
  end

  def events
  end

  def landing
  end
end
