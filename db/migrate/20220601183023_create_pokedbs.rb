class CreatePokedbs < ActiveRecord::Migration[6.1]
  def change
    create_table :pokedbs do |t|
      t.string :name
      t.string :category
      t.string :rarity
      t.string :image

      t.timestamps
    end
  end
end
