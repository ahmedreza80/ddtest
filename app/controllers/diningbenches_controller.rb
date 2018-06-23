class DiningbenchesController < ApplicationController
  before_action :set_diningbench, only: [:show, :edit, :update, :destroy]

  # GET /diningbenches
  # GET /diningbenches.json
  def index
    @diningbenches = Diningbench.all
  end

  # GET /diningbenches/1
  # GET /diningbenches/1.json
  def show
    @diningbenches = Diningbench.all
  end

  # GET /diningbenches/new
  def new
    @diningbench = Diningbench.new
  end

  # GET /diningbenches/1/edit
  def edit
  end

  # POST /diningbenches
  # POST /diningbenches.json
  def create
    @diningbench = Diningbench.new(diningbench_params)

    respond_to do |format|
      if @diningbench.save
        format.html { redirect_to @diningbench, notice: 'Diningbench was successfully created.' }
        format.json { render :show, status: :created, location: @diningbench }
      else
        format.html { render :new }
        format.json { render json: @diningbench.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diningbenches/1
  # PATCH/PUT /diningbenches/1.json
  def update
    respond_to do |format|
      if @diningbench.update(diningbench_params)
        format.html { redirect_to @diningbench, notice: 'Diningbench was successfully updated.' }
        format.json { render :show, status: :ok, location: @diningbench }
      else
        format.html { render :edit }
        format.json { render json: @diningbench.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diningbenches/1
  # DELETE /diningbenches/1.json
  def destroy
    @diningbench.destroy
    respond_to do |format|
      format.html { redirect_to diningbenches_url, notice: 'Diningbench was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diningbench
      @diningbench = Diningbench.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diningbench_params
      params.require(:diningbench).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
