class TypePaymentsController < ApplicationController
  before_action :set_type_payment, only: [:show, :edit, :update, :destroy]

  # GET /type_payments
  # GET /type_payments.json
  def index
    @type_payments = TypePayment.all
  end

  # GET /type_payments/1
  # GET /type_payments/1.json
  def show
  end

  # GET /type_payments/new
  def new
    @type_payment = TypePayment.new
  end

  # GET /type_payments/1/edit
  def edit
  end

  # POST /type_payments
  # POST /type_payments.json
  def create
    @type_payment = TypePayment.new(type_payment_params)

    respond_to do |format|
      if @type_payment.save
        format.html { redirect_to @type_payment, notice: 'Type payment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @type_payment }
      else
        format.html { render action: 'new' }
        format.json { render json: @type_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_payments/1
  # PATCH/PUT /type_payments/1.json
  def update
    respond_to do |format|
      if @type_payment.update(type_payment_params)
        format.html { redirect_to @type_payment, notice: 'Type payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @type_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_payments/1
  # DELETE /type_payments/1.json
  def destroy
    @type_payment.destroy
    respond_to do |format|
      format.html { redirect_to type_payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_payment
      @type_payment = TypePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_payment_params
      params.require(:type_payment).permit(:description, :brand, :account, :agency, :account_owner)
    end
end
