class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_filter :verify_authenticity_token
  def configure_permitted_parameters
	devise_parameter_sanitizer.for(:sign_up) << :name
	end
end
