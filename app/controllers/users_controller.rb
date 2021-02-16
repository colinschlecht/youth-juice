class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path
        else
            render :new
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :password, :bio, :favorite_drink)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
