class PokemonController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index 
	  @pokemons = Pokemon.all 
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(poke_params)
		if @pokemon.save 
    		redirect_to '/pokemons' 
  		else 
    		render 'new' 
  		end 
	end

	private

	def poke_params
		params.require(:pokemon).permit(:name, :typing)
	end
end
