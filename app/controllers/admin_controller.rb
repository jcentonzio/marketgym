class AdminController < ApplicationController
  def index
  	@directories = Directory.all
  end
end
