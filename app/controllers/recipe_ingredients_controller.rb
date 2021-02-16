class RecipeIngredientsController < ApplicationController
    def new
        @recipe_ingredient = RecipeIngredient.new
    end

    def create
        @recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
        if @recipe_ingredient.save
            redirect_to @recipe_ingredient.recipe
        else
            render :new
        end

    end

    private

    def recipe_ingredient_params
        params.require(:recipe_ingredient).permit(:measurement, :recipe_id, :ingredient_id)
    end
end
