class SidetsController < ApplicationController
  before_action :set_sidet, only: [:show, :edit, :update, :destroy]

  # GET /sidets
  # GET /sidets.json
  def index
    @sidets = Sidet.all
  end

  # GET /sidets/1
  # GET /sidets/1.json
  def show
  end

  # GET /sidets/new
  def new
    @sidet = Sidet.new
  end

  # GET /sidets/1/edit
  def edit
  end

  # POST /sidets
  # POST /sidets.json
  def create
    @sidet = Sidet.new(sidet_params)

    respond_to do |format|
      if @sidet.save
        format.html { redirect_to @sidet, notice: 'Sidet was successfully created.' }
        format.json { render :show, status: :created, location: @sidet }
      else
        format.html { render :new }
        format.json { render json: @sidet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidets/1
  # PATCH/PUT /sidets/1.json
  def update
    respond_to do |format|
      if @sidet.update(sidet_params)
        format.html { redirect_to @sidet, notice: 'Sidet was successfully updated.' }
        format.json { render :show, status: :ok, location: @sidet }
      else
        format.html { render :edit }
        format.json { render json: @sidet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidets/1
  # DELETE /sidets/1.json
  def destroy
    @sidet.destroy
    respond_to do |format|
      format.html { redirect_to sidets_url, notice: 'Sidet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidet
      @sidet = Sidet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidet_params
      params.require(:sidet).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
