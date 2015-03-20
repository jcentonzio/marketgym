class DirectoriesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_directory, only: [:show, :edit, :update, :destroy]
  layout 'merchant'

  # GET /directories
  # GET /directories.json
  def index
    @directories = Directory.all
  end

  # GET /directories/1
  # GET /directories/1.json
  def show
  end

  # GET /directories/new
  def new 
    @directory = Directory.new
    3.times { @directory.accesses.build }
    @services = Service.all
    @zones = Zone.all
  end

  # GET /directories/1/edit
  def edit
    @services = Service.all
    @zones = Zone.all
  end

  # POST /directories
  # POST /directories.json
  def create
    @directory = current_customer.directory.build(directory_params)

    respond_to do |format|
      if @directory.save
        format.html { redirect_to promotion_path, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @directory }
        # added:
        format.js   { render action: 'show', status: :created, location: @directory }
      else
        format.html { redirect_to @directory }
        format.json { render json: @directory.errors, status: :unprocessable_entity }
        # added:
        format.js   { render json: @directory.errors, status: :unprocessable_entity }
      end
    end  
  end

  # PATCH/PUT /directories/1
  # PATCH/PUT /directories/1.json
  def update
    respond_to do |format|
      if @directory.update(directory_params)
        format.html { redirect_to promotion_path, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
        format.js   { render action: 'show', status: :created, location: @directory, notice: 'Person was successfully created.' }
      else
        format.html { redirect_to promotion_path }
        format.json { render json: @directory.errors, status: :unprocessable_entity }
        format.js   { render json: @directory.errors, status: :unprocessable_entity }
      end
    end
  end

  def schedules
    @directory = current_customer.directory
    if @directory.schedules.size == 0
      1.times { @directory.schedules.build }
    end
  end  


  def horario
    @directory = current_customer.directory
    if @directory.schedules.size == 0
      2.times { @directory.schedules.build }
    end
  end  

  # DELETE /directories/1
  # DELETE /directories/1.json
  def destroy
    @directory.destroy
    respond_to do |format|
      format.html { redirect_to directories_url, notice: 'Directory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directory
      @directory = current_customer.directory
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directory_params
      params.require(:directory).permit(:name, :address, :city_id, :phone, :description, :terms, :latitude, :longitude, :accesses_attributes => [:id, :type_access_id, :price], :schedules_attributes => [:id, :star_time, :term_time, period_ids: []], :sitem_ids => [])
    end
end
