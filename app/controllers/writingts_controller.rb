class WritingtsController < ApplicationController
  before_action :set_writingt, only: [:show, :edit, :update, :destroy]

  # GET /writingts
  # GET /writingts.json
  def index
    @writingts = Writingt.all
  end

  # GET /writingts/1
  # GET /writingts/1.json
  def show
  end

  # GET /writingts/new
  def new
    @writingt = Writingt.new
  end

  # GET /writingts/1/edit
  def edit
  end

  # POST /writingts
  # POST /writingts.json
  def create
    @writingt = Writingt.new(writingt_params)

    respond_to do |format|
      if @writingt.save
        format.html { redirect_to @writingt, notice: 'Writingt was successfully created.' }
        format.json { render :show, status: :created, location: @writingt }
      else
        format.html { render :new }
        format.json { render json: @writingt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writingts/1
  # PATCH/PUT /writingts/1.json
  def update
    respond_to do |format|
      if @writingt.update(writingt_params)
        format.html { redirect_to @writingt, notice: 'Writingt was successfully updated.' }
        format.json { render :show, status: :ok, location: @writingt }
      else
        format.html { render :edit }
        format.json { render json: @writingt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writingts/1
  # DELETE /writingts/1.json
  def destroy
    @writingt.destroy
    respond_to do |format|
      format.html { redirect_to writingts_url, notice: 'Writingt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writingt
      @writingt = Writingt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def writingt_params
      params.require(:writingt).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
