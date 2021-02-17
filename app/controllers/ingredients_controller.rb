class IngredientsController < ApplicationController

    before_action :find_ingredient, only: [:show, :eidt, :update, :destroy]

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
        if @ingredient.recipes.count == 0
            @ingredient.destroy
            redirect_to ingredients_path
        else
            flash[:notice] = "Can't delete ingredent that are still in use."
            render :show
        end

    end

    private

    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name, :description, :ingredient_type)
    end
end
