class ParticipationController < ApplicationController
  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :game_id)
  end
end
