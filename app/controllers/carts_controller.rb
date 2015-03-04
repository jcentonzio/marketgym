class CartsController < ApplicationController
  
  def show
  	@access = Access.find(params[:id])
  end
end
