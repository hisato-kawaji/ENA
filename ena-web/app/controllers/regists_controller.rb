class RegistsController < ApplicationController
  before_action :set_regist, only: [:show, :edit, :update, :destroy]

  # GET /regists/1
  # GET /regists/1.json
  def show
  end

  # GET /regists/new
  def new
    @regist = Regist.new
  end

  # GET /regists/1/edit
  def edit
  end

  # POST /regists
  # POST /regists.json
  def create
    @regist = Regist.new(regist_params)

    respond_to do |format|
      if @regist.save
        format.html { redirect_to @regist, notice: 'Regist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @regist }
      else
        format.html { render action: 'new' }
        format.json { render json: @regist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regists/1
  # PATCH/PUT /regists/1.json
  def update
    respond_to do |format|
      if @regist.update(regist_params)
        format.html { redirect_to @regist, notice: 'Regist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @regist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regists/1
  # DELETE /regists/1.json
  def destroy
    respond_to do |format|
      format.html { redirect_to regists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regist
      @regist = Regist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regist_params
      params[:regist]
    end
end
