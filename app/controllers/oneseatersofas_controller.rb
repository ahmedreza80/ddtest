class OneseatersofasController < ApplicationController
  before_action :set_oneseatersofa, only: [:show, :edit, :update, :destroy]

  # GET /oneseatersofas
  # GET /oneseatersofas.json
  def index
    @oneseatersofas = Oneseatersofa.all
  end

  # GET /oneseatersofas/1
  # GET /oneseatersofas/1.json
  def show
  end

  # GET /oneseatersofas/new
  def new
    @oneseatersofa = Oneseatersofa.new
  end

  # GET /oneseatersofas/1/edit
  def edit
  end

  # POST /oneseatersofas
  # POST /oneseatersofas.json
  def create
    @oneseatersofa = Oneseatersofa.new(oneseatersofa_params)

    respond_to do |format|
      if @oneseatersofa.save
        format.html { redirect_to @oneseatersofa, notice: 'Oneseatersofa was successfully created.' }
        format.json { render :show, status: :created, location: @oneseatersofa }
      else
        format.html { render :new }
        format.json { render json: @oneseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oneseatersofas/1
  # PATCH/PUT /oneseatersofas/1.json
  def update
    respond_to do |format|
      if @oneseatersofa.update(oneseatersofa_params)
        format.html { redirect_to @oneseatersofa, notice: 'Oneseatersofa was successfully updated.' }
        format.json { render :show, status: :ok, location: @oneseatersofa }
      else
        format.html { render :edit }
        format.json { render json: @oneseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oneseatersofas/1
  # DELETE /oneseatersofas/1.json
  def destroy
    @oneseatersofa.destroy
    respond_to do |format|
      format.html { redirect_to oneseatersofas_url, notice: 'Oneseatersofa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oneseatersofa
      @oneseatersofa = Oneseatersofa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oneseatersofa_params
      params.require(:oneseatersofa).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
