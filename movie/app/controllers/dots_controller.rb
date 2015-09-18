class DotsController < ApplicationController
  before_action :set_dot, only: [:show, :edit, :update, :destroy]

  # GET /dots
  # GET /dots.json
  def index
    @dots = Dot.all
  end

  # GET /dots/1
  # GET /dots/1.json
  def show
  end

  # GET /dots/new
  def new
    @dot = Dot.new
  end

  # GET /dots/1/edit
  def edit
  end

  # POST /dots
  # POST /dots.json
  def create
    @dot = Dot.new(dot_params)

    respond_to do |format|
      if @dot.save
        format.html { redirect_to @dot, notice: 'Dot was successfully created.' }
        format.json { render :show, status: :created, location: @dot }
      else
        format.html { render :new }
        format.json { render json: @dot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dots/1
  # PATCH/PUT /dots/1.json
  def update
    respond_to do |format|
      if @dot.update(dot_params)
        format.html { redirect_to @dot, notice: 'Dot was successfully updated.' }
        format.json { render :show, status: :ok, location: @dot }
      else
        format.html { render :edit }
        format.json { render json: @dot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dots/1
  # DELETE /dots/1.json
  def destroy
    @dot.destroy
    respond_to do |format|
      format.html { redirect_to dots_url, notice: 'Dot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dot
      @dot = Dot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dot_params
      params[:dot]
    end
end
