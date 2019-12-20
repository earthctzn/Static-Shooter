class Api::V1::PlayersController < ApplicationController

    def create
        player = Player.create(name: params[:player_name])

    end

end