class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_pa​​rameters, if: :devise_controller?

  protected

  def configure_permitted_pa​​rameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday, :sex, :college ,:ror, :programming])
    update_attrs = [:password, :password_confirmation, :current_password,:name, :birthday, :sex, :college ,:ror, :programming]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end
end