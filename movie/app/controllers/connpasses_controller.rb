class ConnpassesController < ApplicationController
  before_action :set_connpass, only: [:show, :edit, :update, :destroy]

  # GET /connpasses
  # GET /connpasses.json
  def index
    @connpasses = Connpass.all
  end

  # GET /connpasses/1
  # GET /connpasses/1.json
  def show
  end

  # GET /connpasses/new
  def new
    @connpass = Connpass.new
  end

  # GET /connpasses/1/edit
  def edit
  end

  # POST /connpasses
  # POST /connpasses.json
  def create
    @connpass = Connpass.new(connpass_params)

    respond_to do |format|
      if @connpass.save
        format.html { redirect_to @connpass, notice: 'Connpass was successfully created.' }
        format.json { render :show, status: :created, location: @connpass }
      else
        format.html { render :new }
        format.json { render json: @connpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connpasses/1
  # PATCH/PUT /connpasses/1.json
  def update
    respond_to do |format|
      if @connpass.update(connpass_params)
        format.html { redirect_to @connpass, notice: 'Connpass was successfully updated.' }
        format.json { render :show, status: :ok, location: @connpass }
      else
        format.html { render :edit }
        format.json { render json: @connpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connpasses/1
  # DELETE /connpasses/1.json
  def destroy
    @connpass.destroy
    respond_to do |format|
      format.html { redirect_to connpasses_url, notice: 'Connpass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connpass
      @connpass = Connpass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connpass_params
      params[:connpass]
    end
end
