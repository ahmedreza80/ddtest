class KingsizebsController < ApplicationController
  before_action :set_kingsizeb, only: [:show, :edit, :update, :destroy]

  # GET /kingsizebs
  # GET /kingsizebs.json
  def index
    @kingsizebs = Kingsizeb.all
  end

  # GET /kingsizebs/1
  # GET /kingsizebs/1.json
  def show
  end

  # GET /kingsizebs/new
  def new
    @kingsizeb = Kingsizeb.new
  end

  # GET /kingsizebs/1/edit
  def edit
  end

  # POST /kingsizebs
  # POST /kingsizebs.json
  def create
    @kingsizeb = Kingsizeb.new(kingsizeb_params)

    respond_to do |format|
      if @kingsizeb.save
        format.html { redirect_to @kingsizeb, notice: 'Kingsizeb was successfully created.' }
        format.json { render :show, status: :created, location: @kingsizeb }
      else
        format.html { render :new }
        format.json { render json: @kingsizeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kingsizebs/1
  # PATCH/PUT /kingsizebs/1.json
  def update
    respond_to do |format|
      if @kingsizeb.update(kingsizeb_params)
        format.html { redirect_to @kingsizeb, notice: 'Kingsizeb was successfully updated.' }
        format.json { render :show, status: :ok, location: @kingsizeb }
      else
        format.html { render :edit }
        format.json { render json: @kingsizeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kingsizebs/1
  # DELETE /kingsizebs/1.json
  def destroy
    @kingsizeb.destroy
    respond_to do |format|
      format.html { redirect_to kingsizebs_url, notice: 'Kingsizeb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kingsizeb
      @kingsizeb = Kingsizeb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kingsizeb_params
      params.require(:kingsizeb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
