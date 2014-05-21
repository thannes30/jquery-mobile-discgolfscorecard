class GamesController < ApplicationController

  def index

  end

  def new
    @game = Game.new
    # redirect_to show_scores_path
  end

  def search
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      weather_info = Weather.location_lookup(params[:game][:zipcode])
      @game.temperature = weather_info[:temperature]
      @game.wind = weather_info[:wind]
      @game.weather = weather_info[:weather]
      @game.save
      redirect_to new_game_score_path(@game)
    else
      render "new"
    end
  end

  def show
    @games = Game.all
  end

  private

  def game_params
    params.require(:game).permit(:course, :temperature, :wind, :weather, :created_at, :updated_at)
  end

  # def score_params
  #   params.require(:score).permit(:user_id, :game_id, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5,
  #     :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14,
  #     :hole_15, :hole_16, :hole_17, :hole_18)
  # end

end
