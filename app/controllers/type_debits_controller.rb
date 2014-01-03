class TypeDebitsController < ApplicationController
  before_action :set_type_debit, only: [:show, :edit, :update, :destroy]

  # GET /type_debits
  # GET /type_debits.json
  def index
    @type_debits = TypeDebit.all
  end

  # GET /type_debits/1
  # GET /type_debits/1.json
  def show
  end

  # GET /type_debits/new
  def new
    @type_debit = TypeDebit.new
  end

  # GET /type_debits/1/edit
  def edit
  end

  # POST /type_debits
  # POST /type_debits.json
  def create
    @type_debit = TypeDebit.new(type_debit_params)

    respond_to do |format|
      if @type_debit.save
        format.html { redirect_to @type_debit, notice: 'Type debit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @type_debit }
      else
        format.html { render action: 'new' }
        format.json { render json: @type_debit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_debits/1
  # PATCH/PUT /type_debits/1.json
  def update
    respond_to do |format|
      if @type_debit.update(type_debit_params)
        format.html { redirect_to @type_debit, notice: 'Type debit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @type_debit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_debits/1
  # DELETE /type_debits/1.json
  def destroy
    @type_debit.destroy
    respond_to do |format|
      format.html { redirect_to type_debits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_debit
      @type_debit = TypeDebit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_debit_params
      params.require(:type_debit).permit(:description)
    end
end
