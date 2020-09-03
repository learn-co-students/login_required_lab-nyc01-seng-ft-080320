class SessionsController < ApplicationController

    def home
    end 

    def new
    end 

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/show'
        else 
            redirect_to new_session_path
        end 
    end 

    def destroy
        session.delete :name
        redirect_to '/'
    end 
end
