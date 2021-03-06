class PokemonController < ActionController::Base
	def capture
		# Grab the id of the Pokemon from the parameters and 
		# set that Pokemon's trainer to be the current trainer logged in.
		pokemon = Pokemon.find(params[:id])
		pokemon.update(trainer_id: current_trainer.id)
		redirect_to '/' # can always comment out the redirect because the post can have a view
	end


	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.update(health: pokemon.health - 10)
		if pokemon.health <= 0
            pokemon.delete # destory is stronger
        end 
		redirect_to "/trainers/#{current_trainer.id}"
		# the hashtag is a string interpolation in ruby
		# ruby does not interpolate strings in single quotes
	end

	def new
		@pokemon = Pokemon.new
		render 'new'
	end 

	def create
		@pokemon = Pokemon.create(pokemon_params) # passing in the specific params, it's an embedded hash
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to "/trainers/#{current_trainer.id}", method: :get
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render 'new.html.erb'
		end

	end

	private
    # Using a private method to encapsulate the permissible parameters is
    # a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def pokemon_params
    	params.require(:pokemon).permit(:name, :ndex)
    end


end