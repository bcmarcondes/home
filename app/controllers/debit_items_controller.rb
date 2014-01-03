class DebitItemsController < ApplicationController
  before_action :set_debit_item, only: [:show, :edit, :update, :destroy]

  # GET /debit_items
  # GET /debit_items.json
  def index
    @debit_items = DebitItem.all
  end
  # GET /debit_items/1
  # GET /debit_items/1.json
  def show
  end

  # GET /debit_items/new
  def new
    @debit_item = DebitItem.new
  end

  # GET /debit_items/1/edit
  def edit
  end

  # POST /debit_items
  # POST /debit_items.json
  def create
    @debit_item = DebitItem.new(debit_item_params)

    respond_to do |format|
      if @debit_item.save
        format.html { redirect_to @debit_item, notice: 'Debit item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @debit_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @debit_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debit_items/1
  # PATCH/PUT /debit_items/1.json
  def update
    respond_to do |format|
      if @debit_item.update(debit_item_params)
        format.html { redirect_to @debit_item, notice: 'Debit item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @debit_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debit_items/1
  # DELETE /debit_items/1.json
  def destroy
    @debit_item.destroy
    respond_to do |format|
      format.html { redirect_to debit_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debit_item
      @debit_item = DebitItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debit_item_params
      params.require(:debit_item).permit(:shop, :description, :value)
    end
end
