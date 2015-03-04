class CartsController < ApplicationController

  def show
  	@access = Access.find(params[:id])
    Order.create!(amount: @access.price, access_id: @access.id, type_state_id: 1)
  end


end
