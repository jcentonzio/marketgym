class MerchantController < ApplicationController
	before_action :authenticate_customer!

	def index

	end

	def company
     @directory = Directory.new
     3.times { @directory.accesses.build }
    @services = Service.all
    @zones = Zone.all
	end	
end
