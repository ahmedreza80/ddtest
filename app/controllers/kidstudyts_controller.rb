class KidstudytsController < ApplicationController
  before_action :set_kidstudyt, only: [:show, :edit, :update, :destroy]

  # GET /kidstudyts
  # GET /kidstudyts.json
  def index
    @kidstudyts = Kidstudyt.all
  end

  # GET /kidstudyts/1
  # GET /kidstudyts/1.json
  def show
  end

  # GET /kidstudyts/new
  def new
    @kidstudyt = Kidstudyt.new
  end

  # GET /kidstudyts/1/edit
  def edit
  end

  # POST /kidstudyts
  # POST /kidstudyts.json
  def create
    @kidstudyt = Kidstudyt.new(kidstudyt_params)

    respond_to do |format|
      if @kidstudyt.save
        format.html { redirect_to @kidstudyt, notice: 'Kidstudyt was successfully created.' }
        format.json { render :show, status: :created, location: @kidstudyt }
      else
        format.html { render :new }
        format.json { render json: @kidstudyt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kidstudyts/1
  # PATCH/PUT /kidstudyts/1.json
  def update
    respond_to do |format|
      if @kidstudyt.update(kidstudyt_params)
        format.html { redirect_to @kidstudyt, notice: 'Kidstudyt was successfully updated.' }
        format.json { render :show, status: :ok, location: @kidstudyt }
      else
        format.html { render :edit }
        format.json { render json: @kidstudyt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kidstudyts/1
  # DELETE /kidstudyts/1.json
  def destroy
    @kidstudyt.destroy
    respond_to do |format|
      format.html { redirect_to kidstudyts_url, notice: 'Kidstudyt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kidstudyt
      @kidstudyt = Kidstudyt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kidstudyt_params
      params.require(:kidstudyt).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
