class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:home, :new, :create, :logout]

    def home
        render :home
    end

    def age
        render layout: false
    end

    def new
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            flash[:notice] = "Log in succesully."
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = "No matching account found."
            render :new
        end
    end

    def logout
        session.delete :user_id
        redirect_to home_path
    end

    def destroy
        session.delete :user_id
        @current_user = nil
        redirect_to home_path
      end
end
