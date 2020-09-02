class SessionsController < ApplicationController
  def create
    return redirect_to(controller: 'sessions', action: 'new') if params[:name].blank?
    session[:name] = params[:name]
    redirect_to(controller: "secrets", action: 'show')
  end
  
  def destroy
    if !session[:name].nil? || session[:name] != ""
      session.delete :name
    end
  end
end
