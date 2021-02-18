class PortfoliosController < ApplicationController

    # def show
    #     @user = User.find(session[:user_id])
    #     @recipes = @user.recipes
    # end
    def index
        current_user
    end

    def new
        @recipes = Recipe.all
        id = params[:recipe_id]
        if id && @recipe = Recipe.find_by_id(id)
            @portfolio = @recipe.portfolios.build
        else
            flash[:notice] = "Not able to add to collection"
            redirect_to recipe_path[id]
        end
    end
    
    def create
        @recipes = Recipe.all
        @portfolio = Portfolio.new(portfolio_params)
        @portfolio.user = current_user
        if @portfolio.save
            redirect_to portfolios_path
        else
            render :new
        end
    end

    private

    def portfolio_params
        params.require(:portfolio).permit(:recipe_id)
    end
end
