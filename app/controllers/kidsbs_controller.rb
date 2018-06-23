class KidsbsController < ApplicationController
  before_action :set_kidsb, only: [:show, :edit, :update, :destroy]

  # GET /kidsbs
  # GET /kidsbs.json
  def index
    @kidsbs = Kidsb.all
  end

  # GET /kidsbs/1
  # GET /kidsbs/1.json
  def show
  end

  # GET /kidsbs/new
  def new
    @kidsb = Kidsb.new
  end

  # GET /kidsbs/1/edit
  def edit
  end

  # POST /kidsbs
  # POST /kidsbs.json
  def create
    @kidsb = Kidsb.new(kidsb_params)

    respond_to do |format|
      if @kidsb.save
        format.html { redirect_to @kidsb, notice: 'Kidsb was successfully created.' }
        format.json { render :show, status: :created, location: @kidsb }
      else
        format.html { render :new }
        format.json { render json: @kidsb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kidsbs/1
  # PATCH/PUT /kidsbs/1.json
  def update
    respond_to do |format|
      if @kidsb.update(kidsb_params)
        format.html { redirect_to @kidsb, notice: 'Kidsb was successfully updated.' }
        format.json { render :show, status: :ok, location: @kidsb }
      else
        format.html { render :edit }
        format.json { render json: @kidsb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kidsbs/1
  # DELETE /kidsbs/1.json
  def destroy
    @kidsb.destroy
    respond_to do |format|
      format.html { redirect_to kidsbs_url, notice: 'Kidsb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kidsb
      @kidsb = Kidsb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kidsb_params
      params.require(:kidsb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
