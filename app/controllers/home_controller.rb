class HomeController < ApplicationController
  def index
  end

  def show
  	 @directory = Directory.find(params[:id])
  	 #ratings = Model.select(:rating).uniq
  end
end
