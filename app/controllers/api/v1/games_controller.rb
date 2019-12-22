class Api::V1::GamesController < ApplicationController
  def index
    games = Game.all
    render json: games, status: 200
  end

  def create
    player = Player.find_or_create_by(name: params[:player_name])
    game = Game.new(player: player, score: params[:score])
    if game.save
      render json: game, include: [:player], status: 200
    else
      render json: {message: "error on create"}
    end
  end

  def top_score
    game = Game.top_score()
    render json: game, status: 200
  end

  def top_scores
    game = Game.top_scores()
    render json: game, include: [:player], status: 200
  end

end
