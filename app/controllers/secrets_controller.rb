class SecretsController< ApplicationController
    before_action :current_user

    def show
        redirect_to controller: 'sessions', action: 'new'
    end
end