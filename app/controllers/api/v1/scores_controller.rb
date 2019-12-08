class Api::V1::ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores, status: 200
  end
  
  def create
    @score = Score.new(score_params)
    byebug
    if @score.save
      render json: @score, status: 200
    end
  end

  def show
    @score = Score.find(params[:id])
    render json: @score, status: 200
  end

  def score_params
    params.require(:score).permit(:player_name, :high_score, :game_id)
  end
end