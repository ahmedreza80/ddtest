class HydraulicstoragebsController < ApplicationController
  before_action :set_hydraulicstorageb, only: [:show, :edit, :update, :destroy]

  # GET /hydraulicstoragebs
  # GET /hydraulicstoragebs.json
  def index
    @hydraulicstoragebs = Hydraulicstorageb.all
  end

  # GET /hydraulicstoragebs/1
  # GET /hydraulicstoragebs/1.json
  def show
  end

  # GET /hydraulicstoragebs/new
  def new
    @hydraulicstorageb = Hydraulicstorageb.new
  end

  # GET /hydraulicstoragebs/1/edit
  def edit
  end

  # POST /hydraulicstoragebs
  # POST /hydraulicstoragebs.json
  def create
    @hydraulicstorageb = Hydraulicstorageb.new(hydraulicstorageb_params)

    respond_to do |format|
      if @hydraulicstorageb.save
        format.html { redirect_to @hydraulicstorageb, notice: 'Hydraulicstorageb was successfully created.' }
        format.json { render :show, status: :created, location: @hydraulicstorageb }
      else
        format.html { render :new }
        format.json { render json: @hydraulicstorageb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hydraulicstoragebs/1
  # PATCH/PUT /hydraulicstoragebs/1.json
  def update
    respond_to do |format|
      if @hydraulicstorageb.update(hydraulicstorageb_params)
        format.html { redirect_to @hydraulicstorageb, notice: 'Hydraulicstorageb was successfully updated.' }
        format.json { render :show, status: :ok, location: @hydraulicstorageb }
      else
        format.html { render :edit }
        format.json { render json: @hydraulicstorageb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hydraulicstoragebs/1
  # DELETE /hydraulicstoragebs/1.json
  def destroy
    @hydraulicstorageb.destroy
    respond_to do |format|
      format.html { redirect_to hydraulicstoragebs_url, notice: 'Hydraulicstorageb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hydraulicstorageb
      @hydraulicstorageb = Hydraulicstorageb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hydraulicstorageb_params
      params.require(:hydraulicstorageb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
