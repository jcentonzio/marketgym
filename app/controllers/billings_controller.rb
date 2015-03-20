class BillingsController < ApplicationController
  
  before_action :authenticate_customer!
  before_action :set_billing, only: [:show, :edit, :update, :destroy]
  layout 'merchant'	
  
  def new
  	@billing = Billing.new
  end


  private

  def set_access
      #@access = Access.find(params[:id])
      @billing = current_customer.billing.find(params[:id])
  end

end
