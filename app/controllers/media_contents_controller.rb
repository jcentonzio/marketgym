class MediaContentsController < ApplicationController

  before_action :authenticate_customer!	

  layout 'merchant'	
  

  def index
     @media_contents = current_customer.directory.medias.all
  end	

  def create
    @media = current_customer.directory.medias.build(file_name: params[:file])

    if @media.save!
	  respond_to do |format|
	    format.json{ render :json => @media }
	  end
    end
  end

end
