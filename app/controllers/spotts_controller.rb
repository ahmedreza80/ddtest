class SpottsController < ApplicationController
  before_action :set_spott, only: [:show, :edit, :update, :destroy]

  # GET /spotts
  # GET /spotts.json
  def index
    @spotts = Spott.all
  end

  # GET /spotts/1
  # GET /spotts/1.json
  def show
  end

  # GET /spotts/new
  def new
    @spott = Spott.new
  end

  # GET /spotts/1/edit
  def edit
  end

  # POST /spotts
  # POST /spotts.json
  def create
    @spott = Spott.new(spott_params)

    respond_to do |format|
      if @spott.save
        format.html { redirect_to @spott, notice: 'Spott was successfully created.' }
        format.json { render :show, status: :created, location: @spott }
      else
        format.html { render :new }
        format.json { render json: @spott.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotts/1
  # PATCH/PUT /spotts/1.json
  def update
    respond_to do |format|
      if @spott.update(spott_params)
        format.html { redirect_to @spott, notice: 'Spott was successfully updated.' }
        format.json { render :show, status: :ok, location: @spott }
      else
        format.html { render :edit }
        format.json { render json: @spott.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotts/1
  # DELETE /spotts/1.json
  def destroy
    @spott.destroy
    respond_to do |format|
      format.html { redirect_to spotts_url, notice: 'Spott was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spott
      @spott = Spott.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spott_params
      params.require(:spott).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
