class KidswardrobsController < ApplicationController
  before_action :set_kidswardrob, only: [:show, :edit, :update, :destroy]

  # GET /kidswardrobs
  # GET /kidswardrobs.json
  def index
    @kidswardrobs = Kidswardrob.all
  end

  # GET /kidswardrobs/1
  # GET /kidswardrobs/1.json
  def show
  end

  # GET /kidswardrobs/new
  def new
    @kidswardrob = Kidswardrob.new
  end

  # GET /kidswardrobs/1/edit
  def edit
  end

  # POST /kidswardrobs
  # POST /kidswardrobs.json
  def create
    @kidswardrob = Kidswardrob.new(kidswardrob_params)

    respond_to do |format|
      if @kidswardrob.save
        format.html { redirect_to @kidswardrob, notice: 'Kidswardrob was successfully created.' }
        format.json { render :show, status: :created, location: @kidswardrob }
      else
        format.html { render :new }
        format.json { render json: @kidswardrob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kidswardrobs/1
  # PATCH/PUT /kidswardrobs/1.json
  def update
    respond_to do |format|
      if @kidswardrob.update(kidswardrob_params)
        format.html { redirect_to @kidswardrob, notice: 'Kidswardrob was successfully updated.' }
        format.json { render :show, status: :ok, location: @kidswardrob }
      else
        format.html { render :edit }
        format.json { render json: @kidswardrob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kidswardrobs/1
  # DELETE /kidswardrobs/1.json
  def destroy
    @kidswardrob.destroy
    respond_to do |format|
      format.html { redirect_to kidswardrobs_url, notice: 'Kidswardrob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kidswardrob
      @kidswardrob = Kidswardrob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kidswardrob_params
      params.require(:kidswardrob).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
