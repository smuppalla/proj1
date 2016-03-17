class PokemonsController < ApplicationController
    def capture
        @poke = Pokemon.find(params[:id])
        @poke.trainer_id = current_trianer.id
        @poke.save
        redirect_to root_path
end
