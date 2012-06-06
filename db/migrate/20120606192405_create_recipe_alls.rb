class CreateRecipeAlls < ActiveRecord::Migration
  def change
    create_table :recipe_alls do |t|
      t.string :recipe
      t.text :description
      t.text :ingredients
      t.text :directions
      t.string :prep_time
      t.string :cooking_time

      t.timestamps
    end
  end
end
