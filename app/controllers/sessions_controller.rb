class SessionsController < ApplicationController
    before_action :login_required, only: [:secret]
    def create
    
        session[:person] = params[:person]
        redirect_to(root_path)
    end

    def destroy
        session.delete(:person);
        redirect_to(root_path);
    end

    def secret

    end

    private

    def login_required
        return head(:forbidden) unless session.include? :person
    end
end
