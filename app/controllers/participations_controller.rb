class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
    @the_game = Game.find(params["game_id"])
    @participation.game = @the_game
    @participation.user = current_user
    @participation.save

    if @the_game.game_type == "Singles"
      @the_game.status = "completed" if @the_game.participations.length == 1
    else
      @the_game.status = "completed" if @the_game.participations.length == 3
    end
    @the_game.save
    redirect_to root_path
  end

  def create
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to root_path
    else
      render :new
    end
  end
end
