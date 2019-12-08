class GamesController < ApplicationController
  def index
    @games = Game.all

    render json: @games, status: 200
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game. status: 200
    end
  end

  def update
    @game = Game.find(params[:id])
    if @game.update
      render json: @game, status: 200
    end
  end

  private
    def game_params
      params.require(:game).permit(:score)
    end
end
