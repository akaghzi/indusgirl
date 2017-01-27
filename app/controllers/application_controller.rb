class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname,:middlename,:lastname,:phone,:address1,:address2,:city, :company])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname,:middlename,:lastname,:phone,:address1,:address2,:city,:company])
  end
end
