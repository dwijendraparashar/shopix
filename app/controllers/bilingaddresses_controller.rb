class BilingaddressesController < ApplicationController
  before_action :set_bilingaddress, only: [:show, :edit, :update, :destroy]

  # GET /bilingaddresses
  # GET /bilingaddresses.json
  def index
    @bilingaddresses = Bilingaddress.all
  end

  # GET /bilingaddresses/1
  # GET /bilingaddresses/1.json
  def show
  end

  # GET /bilingaddresses/new
  def new
    @bilingaddress = Bilingaddress.new
  end

  # GET /bilingaddresses/1/edit
  def edit
  end

  # POST /bilingaddresses
  # POST /bilingaddresses.json
  def create
    @bilingaddress = Bilingaddress.new(bilingaddress_params)

    respond_to do |format|
      if @bilingaddress.save
        format.html { redirect_to @bilingaddress, notice: 'Bilingaddress was successfully created.' }
        format.json { render :show, status: :created, location: @bilingaddress }
      else
        format.html { render :new }
        format.json { render json: @bilingaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bilingaddresses/1
  # PATCH/PUT /bilingaddresses/1.json
  def update
    respond_to do |format|
      if @bilingaddress.update(bilingaddress_params)
        format.html { redirect_to @bilingaddress, notice: 'Bilingaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @bilingaddress }
      else
        format.html { render :edit }
        format.json { render json: @bilingaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bilingaddresses/1
  # DELETE /bilingaddresses/1.json
  def destroy
    @bilingaddress.destroy
    respond_to do |format|
      format.html { redirect_to bilingaddresses_url, notice: 'Bilingaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bilingaddress
      @bilingaddress = Bilingaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bilingaddress_params
      params.require(:bilingaddress).permit(:name, :gender, :phone, :email, :addressline1, :addressline2, :addressline3, :city, :state, :country, :zipcode, :order_id, :user_id)
    end
end
