class LshapedcornersofasController < ApplicationController
  before_action :set_lshapedcornersofa, only: [:show, :edit, :update, :destroy]

  # GET /lshapedcornersofas
  # GET /lshapedcornersofas.json
  def index
    @lshapedcornersofas = Lshapedcornersofa.all
  end

  # GET /lshapedcornersofas/1
  # GET /lshapedcornersofas/1.json
  def show
  end

  # GET /lshapedcornersofas/new
  def new
    @lshapedcornersofa = Lshapedcornersofa.new
  end

  # GET /lshapedcornersofas/1/edit
  def edit
  end

  # POST /lshapedcornersofas
  # POST /lshapedcornersofas.json
  def create
    @lshapedcornersofa = Lshapedcornersofa.new(lshapedcornersofa_params)

    respond_to do |format|
      if @lshapedcornersofa.save
        format.html { redirect_to @lshapedcornersofa, notice: 'Lshapedcornersofa was successfully created.' }
        format.json { render :show, status: :created, location: @lshapedcornersofa }
      else
        format.html { render :new }
        format.json { render json: @lshapedcornersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lshapedcornersofas/1
  # PATCH/PUT /lshapedcornersofas/1.json
  def update
    respond_to do |format|
      if @lshapedcornersofa.update(lshapedcornersofa_params)
        format.html { redirect_to @lshapedcornersofa, notice: 'Lshapedcornersofa was successfully updated.' }
        format.json { render :show, status: :ok, location: @lshapedcornersofa }
      else
        format.html { render :edit }
        format.json { render json: @lshapedcornersofa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lshapedcornersofas/1
  # DELETE /lshapedcornersofas/1.json
  def destroy
    @lshapedcornersofa.destroy
    respond_to do |format|
      format.html { redirect_to lshapedcornersofas_url, notice: 'Lshapedcornersofa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lshapedcornersofa
      @lshapedcornersofa = Lshapedcornersofa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lshapedcornersofa_params
      params.require(:lshapedcornersofa).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
