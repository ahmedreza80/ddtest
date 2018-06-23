class TvcabinetsController < ApplicationController
  before_action :set_tvcabinet, only: [:show, :edit, :update, :destroy]

  # GET /tvcabinets
  # GET /tvcabinets.json
  def index
    @tvcabinets = Tvcabinet.all
  end

  # GET /tvcabinets/1
  # GET /tvcabinets/1.json
  def show
  end

  # GET /tvcabinets/new
  def new
    @tvcabinet = Tvcabinet.new
  end

  # GET /tvcabinets/1/edit
  def edit
  end

  # POST /tvcabinets
  # POST /tvcabinets.json
  def create
    @tvcabinet = Tvcabinet.new(tvcabinet_params)

    respond_to do |format|
      if @tvcabinet.save
        format.html { redirect_to @tvcabinet, notice: 'Tvcabinet was successfully created.' }
        format.json { render :show, status: :created, location: @tvcabinet }
      else
        format.html { render :new }
        format.json { render json: @tvcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tvcabinets/1
  # PATCH/PUT /tvcabinets/1.json
  def update
    respond_to do |format|
      if @tvcabinet.update(tvcabinet_params)
        format.html { redirect_to @tvcabinet, notice: 'Tvcabinet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tvcabinet }
      else
        format.html { render :edit }
        format.json { render json: @tvcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tvcabinets/1
  # DELETE /tvcabinets/1.json
  def destroy
    @tvcabinet.destroy
    respond_to do |format|
      format.html { redirect_to tvcabinets_url, notice: 'Tvcabinet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tvcabinet
      @tvcabinet = Tvcabinet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tvcabinet_params
      params.require(:tvcabinet).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
