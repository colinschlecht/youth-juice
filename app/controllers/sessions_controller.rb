class SessionsController < ApplicationController

    def home
        render :home
    end

    def new
    end

    def create
        user = User.find_by(username: params[:username])
        if user
            return head(:forbidden) unless user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = "No matching account found."
            render :new
        end
    end

<<<<<<< HEAD
=======
    def logout
        session.delete :user_id
        redirect_to root_path
    end
>>>>>>> origin/colin-wip-postgres
end
