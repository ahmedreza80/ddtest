class TwoseatersofasController < ApplicationController
  before_action :set_twoseatersofa, only: [:show, :edit, :update, :destroy]

  # GET /twoseatersofas
  # GET /twoseatersofas.json
  def index
    @twoseatersofas = Twoseatersofa.all
  end

  # GET /twoseatersofas/1
  # GET /twoseatersofas/1.json
  def show
  end

  # GET /twoseatersofas/new
  def new
    @twoseatersofa = Twoseatersofa.new
  end

  # GET /twoseatersofas/1/edit
  def edit
  end

  # POST /twoseatersofas
  # POST /twoseatersofas.json
  def create
    @twoseatersofa = Twoseatersofa.new(twoseatersofa_params)

    respond_to do |format|
      if @twoseatersofa.save
        format.html { redirect_to @twoseatersofa, notice: 'Twoseatersofa was successfully created.' }
        format.json { render :show, status: :created, location: @twoseatersofa }
      else
        format.html { render :new }
        format.json { render json: @twoseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twoseatersofas/1
  # PATCH/PUT /twoseatersofas/1.json
  def update
    respond_to do |format|
      if @twoseatersofa.update(twoseatersofa_params)
        format.html { redirect_to @twoseatersofa, notice: 'Twoseatersofa was successfully updated.' }
        format.json { render :show, status: :ok, location: @twoseatersofa }
      else
        format.html { render :edit }
        format.json { render json: @twoseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twoseatersofas/1
  # DELETE /twoseatersofas/1.json
  def destroy
    @twoseatersofa.destroy
    respond_to do |format|
      format.html { redirect_to twoseatersofas_url, notice: 'Twoseatersofa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twoseatersofa
      @twoseatersofa = Twoseatersofa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twoseatersofa_params
      params.require(:twoseatersofa).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
