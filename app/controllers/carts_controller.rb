class CartsController < ApplicationController

  #before_action :authenticate_user!

  def cart
    @access = Access.find(params[:id])
    redirect_to purchase_path(@access)
  end	

  def show
  	@access = Access.find(params[:id])
    #Order.create!(amount: @access.price, access_id: @access.id, type_state_id: 1)
  end


end
