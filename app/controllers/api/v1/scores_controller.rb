class ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores, status: 200
  end
end