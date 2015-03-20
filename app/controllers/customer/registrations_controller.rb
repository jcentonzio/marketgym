class Customer::RegistrationsController < Devise::RegistrationsController
  
  layout 'merchant'

 
  private

    def after_sign_up_path_for(resource)
      "/dashboard"
    end


    def sign_up_params
      params.require(:customer).permit(:name, :last_name, :email, :password, :password_confirmation)
    end	

    def account_update_params
      params.require(:customer).permit(:name, :last_name, :email, :password, :password_confirmation, :current_password)
    end


end