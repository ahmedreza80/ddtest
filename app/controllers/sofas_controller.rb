class SofasController < ApplicationController
  before_action :set_sofa, only: [:show, :edit, :update, :destroy]

  # GET /sofas
  # GET /sofas.json
  def index
    @sofas = Sofa.all
  end

  # GET /sofas/1
  # GET /sofas/1.json
  def show
  end

  # GET /sofas/new
  def new
    @sofa = Sofa.new
  end

  # GET /sofas/1/edit
  def edit
  end

  # POST /sofas
  # POST /sofas.json
  def create
    @sofa = Sofa.new(sofa_params)

    respond_to do |format|
      if @sofa.save
        format.html { redirect_to @sofa, notice: 'Sofa was successfully created.' }
        format.json { render :show, status: :created, location: @sofa }
      else
        format.html { render :new }
        format.json { render json: @sofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sofas/1
  # PATCH/PUT /sofas/1.json
  def update
    respond_to do |format|
      if @sofa.update(sofa_params)
        format.html { redirect_to @sofa, notice: 'Sofa was successfully updated.' }
        format.json { render :show, status: :ok, location: @sofa }
      else
        format.html { render :edit }
        format.json { render json: @sofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sofas/1
  # DELETE /sofas/1.json
  def destroy
    @sofa.destroy
    respond_to do |format|
      format.html { redirect_to sofas_url, notice: 'Sofa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sofa
      @sofa = Sofa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sofa_params
      params.require(:sofa).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
