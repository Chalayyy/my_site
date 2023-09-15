class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.text :name
      t.text :typing
      t.timestamps
    end
  end
end
