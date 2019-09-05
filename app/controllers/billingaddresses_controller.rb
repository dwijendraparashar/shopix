class BillingaddressesController < ApplicationController
  before_action :set_billingaddress, only: [:show, :edit, :update, :destroy]

  # GET /billingaddresses
  # GET /billingaddresses.json
  def index
    @billingaddresses = Billingaddress.all
  end

  # GET /billingaddresses/1
  # GET /billingaddresses/1.json
  def show
  end

  # GET /billingaddresses/new
  def new
    @billingaddress = Billingaddress.new
  end

  # GET /billingaddresses/1/edit
  def edit
  end

  # POST /billingaddresses
  # POST /billingaddresses.json
  def create
    @billingaddress = Billingaddress.new(billingaddress_params)

    respond_to do |format|
      if @billingaddress.save
        format.html { redirect_to @billingaddress, notice: 'Billingaddress was successfully created.' }
        format.json { render :show, status: :created, location: @billingaddress }
      else
        format.html { render :new }
        format.json { render json: @billingaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billingaddresses/1
  # PATCH/PUT /billingaddresses/1.json
  def update
    respond_to do |format|
      if @billingaddress.update(billingaddress_params)
        format.html { redirect_to @billingaddress, notice: 'Billingaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @billingaddress }
      else
        format.html { render :edit }
        format.json { render json: @billingaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billingaddresses/1
  # DELETE /billingaddresses/1.json
  def destroy
    @billingaddress.destroy
    respond_to do |format|
      format.html { redirect_to billingaddresses_url, notice: 'Billingaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billingaddress
      @billingaddress = Billingaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billingaddress_params
      params.require(:billingaddress).permit(:name, :gender, :phone, :email, :addressline1, :addressline2, :addressline3, :city, :state, :country, :zipcode, :order_id, :user_id)
    end
end
