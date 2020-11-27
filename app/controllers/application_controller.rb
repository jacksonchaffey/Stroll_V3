class ApplicationController < ActionController::Base
    #CANCAN
    #check_authorization
    #DEVISE
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
    before_action :authenticate_user!
  
    protected
  
    

  #Params for application as user is constantly being validated.
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password, :avatar)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password, :password_confirmation, :avatar)}
    end
end
