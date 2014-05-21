class ScoresController < ApplicationController


  def index
    @game = Game.find(session[:current_game])
    @scores = Score.where(user_id: current_user.id)
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.new(score_params)
    @score.user = current_user
    @score.game = Game.find session[:current_game]
    if @score.save
      redirect_to scores_path
    else
      render "new"
    end
  end

  def show
    @scores = Score.all
  end

  private

  def score_params
    params.require(:score).permit(:user_id, :game_id, :hole_1, :hole_2, :hole_3, :hole_4,
      :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13,
      :hole_14, :hole_15, :hole_16, :hole_17, :hole_18)
  end

  # def game_params
  #   params.require(:game).permit(:course, :temperature, :wind, :weather, :created_at, :updated_at)
  # end

end
