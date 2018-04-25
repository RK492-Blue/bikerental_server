class BikestandsController < ApplicationController
  before_action :set_bikestand, only: [:show, :edit, :update, :destroy]

  # GET /bikestands
  # GET /bikestands.json
  def index
      @bikestands = Bikestand.all
  end

  # GET /bikestands/1
  # GET /bikestands/1.json
  def show
  end

  # GET /bikestands/new
  def new
    @bikestand = Bikestand.new
  end

  # GET /bikestands/1/edit
  def edit
  end

  # POST /bikestands
  # POST /bikestands.json
  def create
    @bikestand = Bikestand.new(bikestand_params)

    respond_to do |format|
      if @bikestand.save
        format.html { redirect_to @bikestand, notice: 'Bikestand was successfully created.' }
        format.json { render :show, status: :created, location: @bikestand }
      else
        format.html { render :new }
        format.json { render json: @bikestand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bikestands/1
  # PATCH/PUT /bikestands/1.json
  def update
    respond_to do |format|
      if @bikestand.update(bikestand_params)
        format.html { redirect_to @bikestand, notice: 'Bikestand was successfully updated.' }
        format.json { render :show, status: :ok, location: @bikestand }
      else
        format.html { render :edit }
        format.json { render json: @bikestand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikestands/1
  # DELETE /bikestands/1.json
  def destroy
    @bikestand.destroy
    respond_to do |format|
      format.html { redirect_to bikestands_url, notice: 'Bikestand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bikestand
      @bikestand = Bikestand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bikestand_params
      params.require(:bikestand).permit(:location, :longitude,:latitude)
    end
end
