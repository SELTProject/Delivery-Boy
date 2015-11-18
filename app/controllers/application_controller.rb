class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #before_filter :configure_permitted_parameters, if: :devise_controller?

  #before_filter :check_details_present

  #protected

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
  #end

  #def check_details_present
  def after_sign_in_path_for(resource_or_scope)
    rolesusers = Rolesuser.find_by_user_id(current_user.id)
    logger.debug "Inside after_sign_in_path_for"
    if !rolesusers.blank?
      if rolesusers.role_id = "customer"
        logger.debug "Logged in as Customer"
        session[:user_role] = "customer"
        return edit_user_registration_url
      elsif rolesusers.role_id = "driver"
        logger.debug "Logged in as Driver"
        session[:user_role] = "driver"
        return edit_user_registration_url
      else rolesusers.role_id = "businessowner"
        logger.debug "Logged in as Business Owner"
        session[:user_role] = "businessowner"
        return edit_user_registration_url
      end
    end
  end

  #layout :layout_by_resource

  #protected

  #def layout_by_resource
  #  if devise_controller?
  #    "devise"
  #  else
  #    "application"
  #  end
  #end
end
