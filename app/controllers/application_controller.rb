class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!
    
    before_action :configure_permitted_parameters, if: :devise_controller? 
protected
        def configure_permitted_parameters
             devise_parameter_sanitizer.permit(:sign_up, keys: [:username]) #permissão de username para cadastro
             devise_parameter_sanitizer.permit(:sign_in, keys: [:username]) #permissão de username para logar
             devise_parameter_sanitizer.permit(:account_update, keys: [:username]) #atualização da conta
        end
        
    protect_from_forgery with: :exception

end
