class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :ingredient_type, only: [:show, :new, :create, :edit, :update, :destroy]

    def index
        @recipes = Recipe.all
    end

    def show
    end

    def edit
        @ingredients = Ingredient.all
    end

    def update
        if @recipe.update(recipe_params)
        redirect_to @recipe
        else 
            render :edit  
        end
    end

    def new
        @ingredients = Ingredient.all
        @recipe = Recipe.new
        3.times { @recipe.ingredients.build() }
    end

    def create
        @ingredients = Ingredient.all
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to @recipe
        else
            @ingredients = Ingredient.all
            render :new
        end
    end
    
    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private
    def recipe_params
        params.require(:recipe).permit(:name, ingredients_attributes: [:id, :name, :description, :ingredient_type])
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
    def ingredient_type
        @ingredient_type = ["alcohol", "mixer", "garnish", "vessel"]
    end

end
