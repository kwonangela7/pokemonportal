class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
    @pokemons = Pokemon.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = Pokemon.all
  end

end
