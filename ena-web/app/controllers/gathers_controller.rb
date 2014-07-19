class GathersController < ApplicationController
  before_action :set_gather, only: [:show, :edit, :update, :destroy]

  # GET /gathers/1
  # GET /gathers/1.json
  def show
    @gathers = Gather.all
  end

  # GET /gathers/new
  def new
    @gather = Gather.new
  end

  # POST /gathers
  # POST /gathers.json
  def create
    @gather = Gather.new(gather_params)

    respond_to do |format|
      if @gather.save
        format.html { redirect_to @gather, notice: 'Gather was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gather }
      else
        format.html { render action: 'new' }
        format.json { render json: @gather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gathers/1
  # PATCH/PUT /gathers/1.json
  def update
    respond_to do |format|
      if @gather.update(gather_params)
        format.html { redirect_to @gather, notice: 'Gather was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gathers/1
  # DELETE /gathers/1.json
  def destroy
    respond_to do |format|
      format.html { redirect_to gathers_url }
      format.json { head :no_content }
    end
  end

  # RECOVER /gathers/1
  # RECOVER /gathers/1.json
  def recover
    respond_to do |format|
      format.html { redirect_to gathers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gather
      @gather = Gather.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gather_params
      params[:gather]
    end
end
