class PokemonsController < ApplicationController
    def capture
        poke = Pokemon.find(params[:id])
        poke.trainer_id = current_trainer.id
        poke.save
        redirect_to root_path
    end
    def damage
        poke = Pokemon.find(params[:id])
        poke.health -= 10
        if poke.health <= 0
            poke.destroy
        else
            poke.save
        end
        redirect_to "/trainers/#{poke.trainer_id}"
    end
    def create
        @pokemon = Pokemon.new(pokemon_params)
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer_id = current_trainer.id

        if @pokemon.save
            redirect_to "/trainers/#{poke.trainer_id}"
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to "/trainers/#{poke.trainer_id}"
        end
    end
    def new
        @pokemon = Pokemon.new
    end
    def pokemon_params
        params.require(:pokemon).permit(:name)
    end
end
