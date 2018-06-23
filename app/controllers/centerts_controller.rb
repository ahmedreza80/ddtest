class CentertsController < ApplicationController
  before_action :set_centert, only: [:show, :edit, :update, :destroy]

  # GET /centerts
  # GET /centerts.json
  def index
    @centerts = Centert.all
  end

  # GET /centerts/1
  # GET /centerts/1.json
  def show
  end

  # GET /centerts/new
  def new
    @centert = Centert.new
  end

  # GET /centerts/1/edit
  def edit
  end

  # POST /centerts
  # POST /centerts.json
  def create
    @centert = Centert.new(centert_params)

    respond_to do |format|
      if @centert.save
        format.html { redirect_to @centert, notice: 'Centert was successfully created.' }
        format.json { render :show, status: :created, location: @centert }
      else
        format.html { render :new }
        format.json { render json: @centert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centerts/1
  # PATCH/PUT /centerts/1.json
  def update
    respond_to do |format|
      if @centert.update(centert_params)
        format.html { redirect_to @centert, notice: 'Centert was successfully updated.' }
        format.json { render :show, status: :ok, location: @centert }
      else
        format.html { render :edit }
        format.json { render json: @centert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centerts/1
  # DELETE /centerts/1.json
  def destroy
    @centert.destroy
    respond_to do |format|
      format.html { redirect_to centerts_url, notice: 'Centert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centert
      @centert = Centert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centert_params
      params.require(:centert).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
