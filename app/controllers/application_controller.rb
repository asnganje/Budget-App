class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, except: %i[new create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
  end
  # private

  # def authenticate_user!
  # if user_signed_in?
  # super

  # elsif
  # request.original_fullpath != pages_index_path
  # redirect_to pages_index_path, notice: 'Please Login to track your transactions!'
  # end
  # end
end
