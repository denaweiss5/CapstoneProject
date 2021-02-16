class RecipesController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
 


  def index
    recipes = Recipe.all
    render json: recipes, except: [:created_at, :updated_at]
end

  def show
    recipe = Recipe.find_by_id(params[:id])
    render json: recipe
end
  def create
    recipe = Recipe.new(recipe_params)


      if recipe.save
        render json: recipe
      else
        render json: { error: recipe.errors.full_messages}
      end
    end



  def destroy
    recipe = Recipe.find(params[:id])
    if recipe.destroy
      render json: {message: 'Recipe Deleted Successfully'}
    else 
      render json: {error: "Something went wrong, cannot delete meal_entry."}
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:user_id, :name, :calories, :carbs, :fat, :protein, :directions, :ingredients, :image, :recipe_id)
    end
end
