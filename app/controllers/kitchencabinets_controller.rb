class KitchencabinetsController < ApplicationController
  before_action :set_kitchencabinet, only: [:show, :edit, :update, :destroy]

  # GET /kitchencabinets
  # GET /kitchencabinets.json
  def index
    @kitchencabinets = Kitchencabinet.all
  end

  # GET /kitchencabinets/1
  # GET /kitchencabinets/1.json
  def show
  end

  # GET /kitchencabinets/new
  def new
    @kitchencabinet = Kitchencabinet.new
  end

  # GET /kitchencabinets/1/edit
  def edit
  end

  # POST /kitchencabinets
  # POST /kitchencabinets.json
  def create
    @kitchencabinet = Kitchencabinet.new(kitchencabinet_params)

    respond_to do |format|
      if @kitchencabinet.save
        format.html { redirect_to @kitchencabinet, notice: 'Kitchencabinet was successfully created.' }
        format.json { render :show, status: :created, location: @kitchencabinet }
      else
        format.html { render :new }
        format.json { render json: @kitchencabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchencabinets/1
  # PATCH/PUT /kitchencabinets/1.json
  def update
    respond_to do |format|
      if @kitchencabinet.update(kitchencabinet_params)
        format.html { redirect_to @kitchencabinet, notice: 'Kitchencabinet was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitchencabinet }
      else
        format.html { render :edit }
        format.json { render json: @kitchencabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchencabinets/1
  # DELETE /kitchencabinets/1.json
  def destroy
    @kitchencabinet.destroy
    respond_to do |format|
      format.html { redirect_to kitchencabinets_url, notice: 'Kitchencabinet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchencabinet
      @kitchencabinet = Kitchencabinet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitchencabinet_params
      params.require(:kitchencabinet).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
