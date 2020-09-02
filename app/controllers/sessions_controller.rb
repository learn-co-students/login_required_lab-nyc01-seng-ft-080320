class SessionsController < ApplicationController
  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
    else
      redirect_to sessions_new_path
    end
  end
  def new
  end
  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to sessions_new_path
  end
end
