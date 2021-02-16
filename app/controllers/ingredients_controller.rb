class IngredientsController < ApplicationController

    before_action :find_ingredient, only: [:show, :eidt, :update]

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

    end

    def edit

    end

    def update

    end 

    def destroy

    end

    private

    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name, :description, :ingredient_type)
    end

    def ingredient_type
        @ingregident_type = ["alcohol",]
    end
end
