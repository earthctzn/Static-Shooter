class Api::V1::PlayersController < ApplicationController
  def index
    @player = Player.all
    render json: @player, status: 200
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      render json: @player, status: 200
    end
  end

  def show
    @player = Player.find(params[:id])
    render json: @player, status: 200
  end

  def update
    @player = Player.find(params[:id])
    if @player.update
      render json: @player, status: 200
    end
  end

  private
    def player_params
      params.require(:player).permit(:name)
    end
end
