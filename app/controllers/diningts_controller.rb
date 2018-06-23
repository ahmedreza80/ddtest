class DiningtsController < ApplicationController
  before_action :set_diningt, only: [:show, :edit, :update, :destroy]

  # GET /diningts
  # GET /diningts.json
  def index
    @diningts = Diningt.all
  end

  # GET /diningts/1
  # GET /diningts/1.json
  def show
  end

  # GET /diningts/new
  def new
    @diningt = Diningt.new
  end

  # GET /diningts/1/edit
  def edit
  end

  # POST /diningts
  # POST /diningts.json
  def create
    @diningt = Diningt.new(diningt_params)

    respond_to do |format|
      if @diningt.save
        format.html { redirect_to @diningt, notice: 'Diningt was successfully created.' }
        format.json { render :show, status: :created, location: @diningt }
      else
        format.html { render :new }
        format.json { render json: @diningt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diningts/1
  # PATCH/PUT /diningts/1.json
  def update
    respond_to do |format|
      if @diningt.update(diningt_params)
        format.html { redirect_to @diningt, notice: 'Diningt was successfully updated.' }
        format.json { render :show, status: :ok, location: @diningt }
      else
        format.html { render :edit }
        format.json { render json: @diningt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diningts/1
  # DELETE /diningts/1.json
  def destroy
    @diningt.destroy
    respond_to do |format|
      format.html { redirect_to diningts_url, notice: 'Diningt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diningt
      @diningt = Diningt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diningt_params
      params.require(:diningt).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
