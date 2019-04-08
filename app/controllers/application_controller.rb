class ApplicationController < ActionController::Base
    include SessionsHelper
    def log_in(user)
    session[:user_id] = user.id
    current_user
    end
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    def log_out
    session[:user_id] = nil
    @current_user = nil
    end
    private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
