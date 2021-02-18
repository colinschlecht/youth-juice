class ApplicationController < ActionController::Base
    before_action :require_login

    
# copied from lecture code
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
    
    #   def logged_in?
    #     !!current_user
    #   end
    
    #   def if_not_logged_in
    #     redirect_to '/' if !logged_in?
    #   end
    
   

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
end
