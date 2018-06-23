class DivanbsController < ApplicationController
  before_action :set_divanb, only: [:show, :edit, :update, :destroy]

  # GET /divanbs
  # GET /divanbs.json
  def index
    @divanbs = Divanb.all
  end

  # GET /divanbs/1
  # GET /divanbs/1.json
  def show
  end

  # GET /divanbs/new
  def new
    @divanb = Divanb.new
  end

  # GET /divanbs/1/edit
  def edit
  end

  # POST /divanbs
  # POST /divanbs.json
  def create
    @divanb = Divanb.new(divanb_params)

    respond_to do |format|
      if @divanb.save
        format.html { redirect_to @divanb, notice: 'Divanb was successfully created.' }
        format.json { render :show, status: :created, location: @divanb }
      else
        format.html { render :new }
        format.json { render json: @divanb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divanbs/1
  # PATCH/PUT /divanbs/1.json
  def update
    respond_to do |format|
      if @divanb.update(divanb_params)
        format.html { redirect_to @divanb, notice: 'Divanb was successfully updated.' }
        format.json { render :show, status: :ok, location: @divanb }
      else
        format.html { render :edit }
        format.json { render json: @divanb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divanbs/1
  # DELETE /divanbs/1.json
  def destroy
    @divanb.destroy
    respond_to do |format|
      format.html { redirect_to divanbs_url, notice: 'Divanb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divanb
      @divanb = Divanb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divanb_params
      params.require(:divanb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
