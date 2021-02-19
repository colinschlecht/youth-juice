class IngredientsController < ApplicationController

    before_action :find_ingredient, only: [:show, :edit, :update, :destroy]
    before_action :ingredient_type, only: [:new, :create, :edit, :update]

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
        if @ingredient.update(ingredient_params)
            flash[:notice] = "Ingredient Infos have updated!"
            redirect_to @ingredient
        else
            render :new
        end
    end 

    def destroy
        if @ingredient.recipes.count == 0
            @ingredient.destroy
            redirect_to ingredients_path
        else
            flash[:notice] = "Can't delete ingredents that are still in use."
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

    def ingredient_type
        @ingredient_type = ["alcohol","mixer","garnish","vessel"]
    end
end
