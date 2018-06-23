class QueensizebsController < ApplicationController
  before_action :set_queensizeb, only: [:show, :edit, :update, :destroy]

  # GET /queensizebs
  # GET /queensizebs.json
  def index
    @queensizebs = Queensizeb.all
  end

  # GET /queensizebs/1
  # GET /queensizebs/1.json
  def show
  end

  # GET /queensizebs/new
  def new
    @queensizeb = Queensizeb.new
  end

  # GET /queensizebs/1/edit
  def edit
  end

  # POST /queensizebs
  # POST /queensizebs.json
  def create
    @queensizeb = Queensizeb.new(queensizeb_params)

    respond_to do |format|
      if @queensizeb.save
        format.html { redirect_to @queensizeb, notice: 'Queensizeb was successfully created.' }
        format.json { render :show, status: :created, location: @queensizeb }
      else
        format.html { render :new }
        format.json { render json: @queensizeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queensizebs/1
  # PATCH/PUT /queensizebs/1.json
  def update
    respond_to do |format|
      if @queensizeb.update(queensizeb_params)
        format.html { redirect_to @queensizeb, notice: 'Queensizeb was successfully updated.' }
        format.json { render :show, status: :ok, location: @queensizeb }
      else
        format.html { render :edit }
        format.json { render json: @queensizeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queensizebs/1
  # DELETE /queensizebs/1.json
  def destroy
    @queensizeb.destroy
    respond_to do |format|
      format.html { redirect_to queensizebs_url, notice: 'Queensizeb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queensizeb
      @queensizeb = Queensizeb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def queensizeb_params
      params.require(:queensizeb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
