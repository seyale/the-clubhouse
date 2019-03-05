class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @join = Game.where(status: "pending")
    # @watch = Game.where(status: "complete")
    # @my_games =
  end

  def join_game
  end

  def events
  end
end
