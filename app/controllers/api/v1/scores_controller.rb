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

  def update
    @score = Score.find(params[:id])
    if @score.update
      render json: @score, status: 200
    else
      render json: {message: "error on update"}
    end
  end

  private

    def score_params
      params.require(:score).permit(:game_score, :high_score, :player_name, :game_id)
    end
end