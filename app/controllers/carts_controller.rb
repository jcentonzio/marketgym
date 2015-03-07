class CartsController < ApplicationController

  #before_action :authenticate_user!

  def cart
    @access = Access.find(params[:id])
    redirect_to purchase_path(@access)
  end

  def payment
    @access = Access.find(params[:id])
  	Order.create!(amount: @access.price, user_id: current_user.id, access_id: @access.id, type_state_id: 1)
  end 	

  def show
  	@access = Access.find(params[:id])
  	if user_signed_in?
  		redirect_to product_path(@access.directory.id, access_id: @access)
  	end   
  end


end
