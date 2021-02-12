class RecipesController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
 

  def create
    recipe = Recipe.new(recipe_params)


      if recipe.save
        render json: recipe
      else
        render json: { error: recipe.errors.full_messages}
      end
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
      params.require(:recipe).permit(:user_id, :name, :calories, :carbs, :fat, :protein, :instructions, :ingredients)
    end
end
