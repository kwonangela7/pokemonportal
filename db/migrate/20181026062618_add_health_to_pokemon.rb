class AddHealthToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :health, :Integer
  end
end
