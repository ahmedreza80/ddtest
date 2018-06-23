class BookcabinetsController < ApplicationController
  before_action :set_bookcabinet, only: [:show, :edit, :update, :destroy]

  # GET /bookcabinets
  # GET /bookcabinets.json
  def index
    @bookcabinets = Bookcabinet.all
  end

  # GET /bookcabinets/1
  # GET /bookcabinets/1.json
  def show
  end

  # GET /bookcabinets/new
  def new
    @bookcabinet = Bookcabinet.new
  end

  # GET /bookcabinets/1/edit
  def edit
  end

  # POST /bookcabinets
  # POST /bookcabinets.json
  def create
    @bookcabinet = Bookcabinet.new(bookcabinet_params)

    respond_to do |format|
      if @bookcabinet.save
        format.html { redirect_to @bookcabinet, notice: 'Bookcabinet was successfully created.' }
        format.json { render :show, status: :created, location: @bookcabinet }
      else
        format.html { render :new }
        format.json { render json: @bookcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookcabinets/1
  # PATCH/PUT /bookcabinets/1.json
  def update
    respond_to do |format|
      if @bookcabinet.update(bookcabinet_params)
        format.html { redirect_to @bookcabinet, notice: 'Bookcabinet was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookcabinet }
      else
        format.html { render :edit }
        format.json { render json: @bookcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookcabinets/1
  # DELETE /bookcabinets/1.json
  def destroy
    @bookcabinet.destroy
    respond_to do |format|
      format.html { redirect_to bookcabinets_url, notice: 'Bookcabinet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookcabinet
      @bookcabinet = Bookcabinet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookcabinet_params
      params.require(:bookcabinet).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
