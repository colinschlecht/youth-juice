class IngredientsController < ApplicationController

    before_action :find_ingredient, only: [:show, :edit, :update]
    before_action :ingredient_type

    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        if @ingredient.save
            redirect_to @ingredient
        else
            render :new
        end
    end

    def edit

    end

    def update

    end 

    def destroy
        find_ingredient
        @ingredient.delete
        redirect_to ingredients_path
    end

    private

    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name, :description, :ingredient_type)
    end

    def ingredient_type
        @ingredient_type = ["alcohol","mixer","garnish","vessel"]
    end
end
