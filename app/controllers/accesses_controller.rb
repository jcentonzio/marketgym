class AccessesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_access, only: [:show, :edit, :update, :destroy]
  layout 'merchant'

  # GET /accesses
  # GET /accesses.json
  def index

  end

  # GET /accesses/1
  # GET /accesses/1.json
  def show
  end

  # GET /accesses/new
  def new
    @access = Access.new
  end

  # GET /accesses/1/edit
  def edit
  end

  # POST /accesses
  # POST /accesses.json
  def create
    @access = current_customer.directory.accesses.build(access_params)

    respond_to do |format|
      if @access.save
        format.html { redirect_to promotion_path, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @access }
        # added:
        format.js   { render action: 'show', status: :created, location: @access }
      else
        format.html { redirect_to @access }
        format.json { render json: @access.errors, status: :unprocessable_entity }
        # added:
        format.js   { render json: @access.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /accesses/1
  # PATCH/PUT /accesses/1.json
  def update
    respond_to do |format|
      if @access.update(access_params)
        format.html { redirect_to promotion_path, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
        format.js   { render action: 'show', status: :created, location: @access, notice: 'Person was successfully created.' }
      else
        format.html { redirect_to promotion_path }
        format.json { render json: @access.errors, status: :unprocessable_entity }
        format.js   { render json: @access.errors, status: :unprocessable_entity }
      end
    end
  end


  def delete
    @access = Access.find(params[:access_id])
  end 

  # DELETE /accesses/1
  # DELETE /accesses/1.json
  def destroy
    @access = Access.find(params[:id])
    @access.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access
      #@access = Access.find(params[:id])
      @access = current_customer.directory.accesses.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_params
      params.require(:access).permit(:name, :price, :type_access_id, :star_date, :end_date, :offer_price, :state, :directory_id)
    end
end
