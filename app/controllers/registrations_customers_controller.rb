class RegistrationsCustomersController < Devise::RegistrationsController

  def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
    return unless request.get? 
    if (request.path != "/customers/sign_in" &&
      request.path != "/customers/sign_up" &&
      request.path != "/customers/password/new" &&
      request.path != "/customers/password/edit" &&
      request.path != "/customers/confirmation" &&
      request.path != "/customers/sign_out" &&
      !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath 
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  private

    def sign_up_params
      params.require(:customer).permit(:name, :last_name, :email, :password, :password_confirmation)
    end	

    def account_update_params
      params.require(:customer).permit(:name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
end
