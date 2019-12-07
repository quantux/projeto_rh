class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    layout 'login'

    def index
    end
    
    def login
        username = params[:username]
        password = params[:password]

        if Admin.exists?(username: username, password: password)
            session[:logged] = true
            redirect_to controller: 'index', action: '_home'
        end
    end

    def gerenciar
        
    end

end
