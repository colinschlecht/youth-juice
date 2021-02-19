class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :ingredient_type, only: [:show, :new, :create, :edit, :update, :destroy]
    before_action :find_ingredients, only: [:new, :new, :create, :edit, :update]

    def index
        @recipes = Recipe.all
    end

    def show
        current_user
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else 
            render :edit  
        end
    end

    def new
        # @ingredients = Ingredient.all
        @recipe = Recipe.new
        1.times { @recipe.ingredients.build }
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            current_user.recipes << @recipe
            redirect_to @recipe
        else
            1.times { @recipe.ingredients.build() }
            render :new
        end
    end
    
    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private
    def recipe_params
        params.require(:recipe).permit(:name, :description, ingredient_ids: [], ingredients_attributes: [:id, :name, :description, :ingredient_type])
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end

    def find_ingredients
        @ingredients = Ingredient.all
    end
    
    def ingredient_type
        @ingredient_type = ["alcohol", "mixer", "garnish", "vessel"]
    end

end
