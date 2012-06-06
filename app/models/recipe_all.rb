class RecipeAll < ActiveRecord::Base
  attr_accessible :recipe, :description, :ingredients, :directions, :prep_time, :cooking_time
	
	searchable do
		text :recipe, :description, :ingredients, :directions, :prep_time, :cooking_time
	end
end
