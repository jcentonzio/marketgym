class HomeController < ApplicationController
  def index
  end

  def show
     if params[:access_id]
        @access = Access.find(params[:access_id])
     end	
  	 @directory = Directory.find(params[:id])
     @fits = @directory.sitems.where(service_id: 1)
     @Wells = @directory.sitems.where(service_id: 2)
     @actis = @directory.sitems.where(service_id: 3)
     @spas = @directory.sitems.where(service_id: 4)
     @servs = @directory.sitems.where(service_id: 5)

  	 #ratings = Model.select(:rating).uniq
  end
end
