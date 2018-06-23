class SinglebsController < ApplicationController
  before_action :set_singleb, only: [:show, :edit, :update, :destroy]

  # GET /singlebs
  # GET /singlebs.json
  def index
    @singlebs = Singleb.all
  end

  # GET /singlebs/1
  # GET /singlebs/1.json
  def show
  end

  # GET /singlebs/new
  def new
    @singleb = Singleb.new
  end

  # GET /singlebs/1/edit
  def edit
  end

  # POST /singlebs
  # POST /singlebs.json
  def create
    @singleb = Singleb.new(singleb_params)

    respond_to do |format|
      if @singleb.save
        format.html { redirect_to @singleb, notice: 'Singleb was successfully created.' }
        format.json { render :show, status: :created, location: @singleb }
      else
        format.html { render :new }
        format.json { render json: @singleb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /singlebs/1
  # PATCH/PUT /singlebs/1.json
  def update
    respond_to do |format|
      if @singleb.update(singleb_params)
        format.html { redirect_to @singleb, notice: 'Singleb was successfully updated.' }
        format.json { render :show, status: :ok, location: @singleb }
      else
        format.html { render :edit }
        format.json { render json: @singleb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singlebs/1
  # DELETE /singlebs/1.json
  def destroy
    @singleb.destroy
    respond_to do |format|
      format.html { redirect_to singlebs_url, notice: 'Singleb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_singleb
      @singleb = Singleb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def singleb_params
      params.require(:singleb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
