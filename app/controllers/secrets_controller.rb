class SecretsController < ApplicationController
    before_action :require_login
    #skip_before_action :require_login, only: [:show]

    def index
    end

    def show
        #if session.include? :user_id
        #if session.include? :name
        secret_path
        # else
        #     redirect_to sessions_new_path
        # end
    end

    private

    def require_login
        #return head(:forbidden) unless session.include? :name
        redirect_to sessions_new_path unless session.include? :name
    end
end
