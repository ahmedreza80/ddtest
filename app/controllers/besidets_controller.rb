class BesidetsController < ApplicationController
  before_action :set_besidet, only: [:show, :edit, :update, :destroy]

  # GET /besidets
  # GET /besidets.json
  def index
    @besidets = Besidet.all
  end

  # GET /besidets/1
  # GET /besidets/1.json
  def show
  end

  # GET /besidets/new
  def new
    @besidet = Besidet.new
  end

  # GET /besidets/1/edit
  def edit
  end

  # POST /besidets
  # POST /besidets.json
  def create
    @besidet = Besidet.new(besidet_params)

    respond_to do |format|
      if @besidet.save
        format.html { redirect_to @besidet, notice: 'Besidet was successfully created.' }
        format.json { render :show, status: :created, location: @besidet }
      else
        format.html { render :new }
        format.json { render json: @besidet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /besidets/1
  # PATCH/PUT /besidets/1.json
  def update
    respond_to do |format|
      if @besidet.update(besidet_params)
        format.html { redirect_to @besidet, notice: 'Besidet was successfully updated.' }
        format.json { render :show, status: :ok, location: @besidet }
      else
        format.html { render :edit }
        format.json { render json: @besidet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /besidets/1
  # DELETE /besidets/1.json
  def destroy
    @besidet.destroy
    respond_to do |format|
      format.html { redirect_to besidets_url, notice: 'Besidet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_besidet
      @besidet = Besidet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def besidet_params
      params.require(:besidet).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
