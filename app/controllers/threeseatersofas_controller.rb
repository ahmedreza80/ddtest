class ThreeseatersofasController < ApplicationController
  before_action :set_threeseatersofa, only: [:show, :edit, :update, :destroy]

  # GET /threeseatersofas
  # GET /threeseatersofas.json
  def index
    @threeseatersofas = Threeseatersofa.all
  end

  # GET /threeseatersofas/1
  # GET /threeseatersofas/1.json
  def show
  end

  # GET /threeseatersofas/new
  def new
    @threeseatersofa = Threeseatersofa.new
  end

  # GET /threeseatersofas/1/edit
  def edit
  end

  # POST /threeseatersofas
  # POST /threeseatersofas.json
  def create
    @threeseatersofa = Threeseatersofa.new(threeseatersofa_params)

    respond_to do |format|
      if @threeseatersofa.save
        format.html { redirect_to @threeseatersofa, notice: 'Threeseatersofa was successfully created.' }
        format.json { render :show, status: :created, location: @threeseatersofa }
      else
        format.html { render :new }
        format.json { render json: @threeseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threeseatersofas/1
  # PATCH/PUT /threeseatersofas/1.json
  def update
    respond_to do |format|
      if @threeseatersofa.update(threeseatersofa_params)
        format.html { redirect_to @threeseatersofa, notice: 'Threeseatersofa was successfully updated.' }
        format.json { render :show, status: :ok, location: @threeseatersofa }
      else
        format.html { render :edit }
        format.json { render json: @threeseatersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threeseatersofas/1
  # DELETE /threeseatersofas/1.json
  def destroy
    @threeseatersofa.destroy
    respond_to do |format|
      format.html { redirect_to threeseatersofas_url, notice: 'Threeseatersofa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threeseatersofa
      @threeseatersofa = Threeseatersofa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threeseatersofa_params
      params.require(:threeseatersofa).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
