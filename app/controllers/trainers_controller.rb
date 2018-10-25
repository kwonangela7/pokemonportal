class TrainersController < ApplicationController
	before_action :authenticate_trainer!

	def index
	    @trainers = Trainer.all
	    @pokemons = Pokemon.all
  	end

  	def show
	    @trainer = Trainer.find(params[:id])
	    @pokemons = Pokemon.all

	    @myPokemon = Trainer.find(params[:id]).pokemons

	    # @myPokemon = ['hi']
	    # puts @myPokemon

	    # @pokemons.each do |pokemon|
	    # 	if @pokemon.trainer_id == params[:id]
	    # 		@myPokemon.push(pokemon)
	    # 	end
   		# end
   		
  	end

end
