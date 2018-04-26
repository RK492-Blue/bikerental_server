class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  # GET /rentals
  # GET /rentals.json
  def index
    @rentals = Rental.all
    if @current_user.present?
      @rental_user1 = Rental.where(:user_id => @current_user.id)
    end
  end

  def rental_user
    @rental_user = Rental.where(:user_id => @current_user.id)
  end

  # GET /rentals/1
  # GET /rentals/1.json
  def show
  end

  # GET /rentals/new
  def new
    @rental = Rental.new
    @bikestands = Bikestand.all
  end

  # GET /rentals/1/edit
  def edit
    @bikestands = Bikestand.all
  end

  # POST /rentals
  # POST /rentals.json
  def create

    @rental = Rental.new(rental_params)

    respond_to do |format|
      if @rental.save
        Bike.where(:id => @rental.bike_id).update(available: 'f')
        format.html { redirect_to @rental, notice: 'Rental was successfully created.' }
        format.json { render :show, status: :created, location: @rental }
      else
        format.html { render :new }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentals/1
  # PATCH/PUT /rentals/1.json
  def update
    respond_to do |format|
      if @rental.update(rental_params)
        Bike.where(:id => @rental.bike_id).update(available: 't',:bikestand_id =>@rental.end_stand_id)
        format.html { redirect_to rental_pay_path(@rental), notice: 'Rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /rentals/1
  # DELETE /rentals/1.json
  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: 'Rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def pay
    #raise
    @current_rental = Rental.find_by :id => params[:id]

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental
      @rental = Rental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_params
      params.require(:rental).permit(:bike_id, :user_id, :start_time, :end_time, :start_stand_id, :end_stand_id, :cost)
    end
end
