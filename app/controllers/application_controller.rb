class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in? #makes the method available in both controller and view template

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user #bang bang turns any object into a boolean value
  end

  def require_user
    if !logged_in?
      flash[:error] = 'You need to logged in to do that'
      redirect_to root_path
    end
  end
end
