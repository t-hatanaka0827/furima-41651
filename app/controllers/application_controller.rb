class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    { sign_up: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :birth_date], sign_in: [:email, :password] }.each { |action, keys| devise_parameter_sanitizer.permit(action, keys: keys) }
  end
end
