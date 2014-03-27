class RecipesController < ApplicationController

  def home
  end

  def index
  end

  def display
    @recipes = Recipe.find_recipes_that_require_any_of_these_skills(1,2)
    render json: @recipes
  end

end
