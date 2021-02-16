class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def authentication_required
    if !logged_in?
      redirect_to 
    end
  end

  def logged_in
    session[:user_id]
  end
end
