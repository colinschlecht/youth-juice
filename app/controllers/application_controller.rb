class ApplicationController < ActionController::Base
    before_action :require_login

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def self.logged_in_link
        if session[:user_id] 
            link_to("Logout", '/logout')
        else
            link_to("Login", '/login')
        end
    end

    def require_login
        unless logged_in
            flash[:notice] = "You must log in first."
            redirect_to login_path
        end
    end
    
    def logged_in
        !!session[:user_id]
    end

    def log_in_user(user_id)
        session[:user_id] = user_id
    end

    def user_age
        session[:legal] = true
    end
end
