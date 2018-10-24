class PokemonController < ActionController::Base
	def capture
		# Grab the id of the Pokemon from the parameters and 
		# set that Pokemon's trainer to be the current trainer logged in.
		pokemon = Pokemon.find_by(params[:id])
		pokemon.update!(trainer_id: current_trainer)
		redirect_to '/' # can always comment out the redirect because the post can have a view
	end


end