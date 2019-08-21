class ApplicationController < ActionController::Base
    # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  #include Pundit

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :user_type, :city])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :user_type, :city])
  end

  #after_action :verify_authorized, except: :index, unless: :skip_pundit?
  #after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/

  end
end

