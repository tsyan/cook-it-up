class RecipesController < ApplicationController

  def home
  end

  def index
    @recipes = Recipe.order(id: :asc)
  end

  def display
    # this is the hackiest hack ever, but i can't think of another way to keep these numbers as pure integers without turning them into an array or a string, neither of which are parseable
    @recipes = Recipe.find_recipes_that_require_any_of_these_skills(
      params[:known_skills][0].to_i,
      params[:known_skills][1].to_i,
      params[:known_skills][2].to_i,
      params[:known_skills][3].to_i,
      params[:known_skills][4].to_i)
    render json: @recipes.to_json(only: [:id, :name, :url, :photo], methods: [:photo_url])
  end

  def new_photo
    @recipe = Recipe.find(params[:id])
  end

  def save_photo
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(photo: params[:recipe][:photo])
    binding.pry
    @recipe.save
    redirect_to recipes_path
  end

end
