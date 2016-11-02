class PokemonsController < ApplicationController

    def new
    end


    def capture
        @trainer = current_trainer
        @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer_id = @trainer.id
        @pokemon.save
        redirect_to root_path
    end




    def create
        @pokemon = Pokemon.new(pokemon_params)
        @pokemon.trainer_id = current_trainer.id
        @pokemon.level = 1
        @pokemon.health = 100

        if @pokemon.save
            redirect_to current_trainer
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to trainer_path(id: @pokemon.trainer_id)
        end
    end


    private
    def pokemon_params
        params.require(:pokemon).permit(:name)
    end
end
