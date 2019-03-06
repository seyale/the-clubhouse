class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @join = Game.where(status: "pending")
    # @watch = Game.where(status: "complete")
    # @my_games =
    @user = current_user
  end

  def join_game
    @games = Game.where(status: "pending")
  end

  def events
  end
end
