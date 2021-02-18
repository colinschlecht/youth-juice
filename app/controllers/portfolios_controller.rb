class PortfoliosController < ApplicationController

    # def show
    #     @user = User.find(session[:user_id])
    #     @recipes = @user.recipes
    # end

    def create
        @recipe = 
        current_user.recipes << @recipe
        redirect_to recipe_path(flash[:recipe])
    end
end
