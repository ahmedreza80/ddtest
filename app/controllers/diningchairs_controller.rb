class DiningchairsController < ApplicationController
  before_action :set_diningchair, only: [:show, :edit, :update, :destroy]

  # GET /diningchairs
  # GET /diningchairs.json
  def index
    @diningchairs = Diningchair.all
  end

  # GET /diningchairs/1
  # GET /diningchairs/1.json
  def show
  end

  # GET /diningchairs/new
  def new
    @diningchair = Diningchair.new
  end

  # GET /diningchairs/1/edit
  def edit
  end

  # POST /diningchairs
  # POST /diningchairs.json
  def create
    @diningchair = Diningchair.new(diningchair_params)

    respond_to do |format|
      if @diningchair.save
        format.html { redirect_to @diningchair, notice: 'Diningchair was successfully created.' }
        format.json { render :show, status: :created, location: @diningchair }
      else
        format.html { render :new }
        format.json { render json: @diningchair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diningchairs/1
  # PATCH/PUT /diningchairs/1.json
  def update
    respond_to do |format|
      if @diningchair.update(diningchair_params)
        format.html { redirect_to @diningchair, notice: 'Diningchair was successfully updated.' }
        format.json { render :show, status: :ok, location: @diningchair }
      else
        format.html { render :edit }
        format.json { render json: @diningchair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diningchairs/1
  # DELETE /diningchairs/1.json
  def destroy
    @diningchair.destroy
    respond_to do |format|
      format.html { redirect_to diningchairs_url, notice: 'Diningchair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diningchair
      @diningchair = Diningchair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diningchair_params
      params.require(:diningchair).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
