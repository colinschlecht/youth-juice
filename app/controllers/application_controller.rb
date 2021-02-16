class ApplicationController < ActionController::Base

    def self.logged_in_link
        if session[:user_id] 
            link_to("Logout", '/logout')
        else
            link_to("Login", '/login')
        end

    end
end
