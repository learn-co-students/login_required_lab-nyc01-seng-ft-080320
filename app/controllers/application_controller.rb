class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def home
    current_user ? (@name = current_user) : redirect_to(login_path)
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
end

end
