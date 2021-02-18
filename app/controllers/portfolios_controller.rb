class PortfoliosController < ApplicationController

    # def show
    #     @user = User.find(session[:user_id])
    #     @recipes = @user.recipes
    # end
    def index
        current_user
        Portfolio.create(user: @current_user, recipe: flash[:recipe])
        redirect_to recipe_path(flash[:recipe])
    end

    def new_portfolio
    end
end
