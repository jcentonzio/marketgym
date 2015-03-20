class MerchantController < ApplicationController
	before_action :authenticate_customer!

	def index

	end

	def profile_company
      @directory = current_customer.directory
	end	

	def edit_profile
     
	end		

	def access
     @access =  Access.new
	end	

end
