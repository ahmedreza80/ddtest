class DressingtsController < ApplicationController
  before_action :set_dressingt, only: [:show, :edit, :update, :destroy]

  # GET /dressingts
  # GET /dressingts.json
  def index
    @dressingts = Dressingt.all
  end

  # GET /dressingts/1
  # GET /dressingts/1.json
  def show
  end

  # GET /dressingts/new
  def new
    @dressingt = Dressingt.new
  end

  # GET /dressingts/1/edit
  def edit
  end

  # POST /dressingts
  # POST /dressingts.json
  def create
    @dressingt = Dressingt.new(dressingt_params)

    respond_to do |format|
      if @dressingt.save
        format.html { redirect_to @dressingt, notice: 'Dressingt was successfully created.' }
        format.json { render :show, status: :created, location: @dressingt }
      else
        format.html { render :new }
        format.json { render json: @dressingt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dressingts/1
  # PATCH/PUT /dressingts/1.json
  def update
    respond_to do |format|
      if @dressingt.update(dressingt_params)
        format.html { redirect_to @dressingt, notice: 'Dressingt was successfully updated.' }
        format.json { render :show, status: :ok, location: @dressingt }
      else
        format.html { render :edit }
        format.json { render json: @dressingt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dressingts/1
  # DELETE /dressingts/1.json
  def destroy
    @dressingt.destroy
    respond_to do |format|
      format.html { redirect_to dressingts_url, notice: 'Dressingt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dressingt
      @dressingt = Dressingt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dressingt_params
      params.require(:dressingt).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
