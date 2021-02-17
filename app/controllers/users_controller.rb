class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :require_login, only: [:new, :destroy, :create]


    def show
        @recipes = @user.recipes.all
    end

    def edit
    end

    def update
        if @user.update(user_params)
        redirect_to @user
        else 
            render :edit  
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def destroy
        @user.destroy
        redirect_to root_path
    end

    private

    def find_user
        @user = User.find(session[:user_id])
    end

    
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :bio, :favorite_drink)
    end

end
