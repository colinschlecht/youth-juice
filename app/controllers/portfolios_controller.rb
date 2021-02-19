class PortfoliosController < ApplicationController
    before_action :load_recipes, only: [:new, :create]
    
    def index
        current_user
        a1 = current_user.recipes
        @a2 = a1.select{ |res| res.creator == current_user }
        @a3 = a1.select{ |res| res.creator != current_user }
    end

    def new
        id = params[:recipe_id]
        if id && @recipe = Recipe.find_by_id(id)
            @portfolio = @recipe.portfolios.build
        else
            flash[:notice] = "Not able to add to collection"
            redirect_to recipe_path[id]
        end
    end
    
    def create
        @portfolio = Portfolio.new(portfolio_params)
        @portfolio.user = current_user
        if @portfolio.save
            redirect_to portfolios_path
        else
            flash[:notice] = "You already have bookmarked this drink."
            redirect_to recipe_path(@portfolio[:recipe_id])
        end
    end

    private

    def load_recipes
        @recipes = Recipe.all
    end

    def portfolio_params
        params.require(:portfolio).permit(:recipe_id)
    end
end
